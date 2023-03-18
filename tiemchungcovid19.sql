USE [QLTiemChungCOVID19]
GO
ALTER TABLE [dbo].[TaiKhoan] DROP CONSTRAINT [FK_TaiKhoan_Quyen]
GO
ALTER TABLE [dbo].[Phuong] DROP CONSTRAINT [FK_Phuong_Quan]
GO
ALTER TABLE [dbo].[PhieuChungNhan] DROP CONSTRAINT [FK_PhieuChungNhan_NhanVienYT]
GO
ALTER TABLE [dbo].[PhieuChungNhan] DROP CONSTRAINT [FK_PhieuChungNhan_NguoiDan]
GO
ALTER TABLE [dbo].[PhieuChungNhan] DROP CONSTRAINT [FK_PhieuChungNhan_DotTiem]
GO
ALTER TABLE [dbo].[NhanVienYT] DROP CONSTRAINT [FK_NhanVienYT_DoiNguYT]
GO
ALTER TABLE [dbo].[NguoiDan] DROP CONSTRAINT [FK_NguoiDan_Quan]
GO
ALTER TABLE [dbo].[NguoiDan] DROP CONSTRAINT [FK_NguoiDan_Phuong]
GO
ALTER TABLE [dbo].[NguoiDan] DROP CONSTRAINT [FK_NguoiDan_DanhSachTiem]
GO
ALTER TABLE [dbo].[DotTiem] DROP CONSTRAINT [FK_DotTiem_Quan]
GO
ALTER TABLE [dbo].[DotTiem] DROP CONSTRAINT [FK_DotTiem_Phuong]
GO
ALTER TABLE [dbo].[DotTiem] DROP CONSTRAINT [FK_DotTiem_LoaiVacXin]
GO
ALTER TABLE [dbo].[DotTiem] DROP CONSTRAINT [FK_DotTiem_DoiNguYT]
GO
ALTER TABLE [dbo].[DotTiem] DROP CONSTRAINT [FK_DotTiem_DanhSachTiem]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/20/2021 4:30:41 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TaiKhoan]') AND type in (N'U'))
DROP TABLE [dbo].[TaiKhoan]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 12/20/2021 4:30:41 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Quyen]') AND type in (N'U'))
DROP TABLE [dbo].[Quyen]
GO
/****** Object:  Table [dbo].[Quan]    Script Date: 12/20/2021 4:30:41 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Quan]') AND type in (N'U'))
DROP TABLE [dbo].[Quan]
GO
/****** Object:  Table [dbo].[Phuong]    Script Date: 12/20/2021 4:30:41 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Phuong]') AND type in (N'U'))
DROP TABLE [dbo].[Phuong]
GO
/****** Object:  Table [dbo].[PhieuChungNhan]    Script Date: 12/20/2021 4:30:41 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhieuChungNhan]') AND type in (N'U'))
DROP TABLE [dbo].[PhieuChungNhan]
GO
/****** Object:  Table [dbo].[NhanVienYT]    Script Date: 12/20/2021 4:30:41 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NhanVienYT]') AND type in (N'U'))
DROP TABLE [dbo].[NhanVienYT]
GO
/****** Object:  Table [dbo].[NguoiDan]    Script Date: 12/20/2021 4:30:41 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NguoiDan]') AND type in (N'U'))
DROP TABLE [dbo].[NguoiDan]
GO
/****** Object:  Table [dbo].[LoaiVacXin]    Script Date: 12/20/2021 4:30:41 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoaiVacXin]') AND type in (N'U'))
DROP TABLE [dbo].[LoaiVacXin]
GO
/****** Object:  Table [dbo].[DotTiem]    Script Date: 12/20/2021 4:30:41 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DotTiem]') AND type in (N'U'))
DROP TABLE [dbo].[DotTiem]
GO
/****** Object:  Table [dbo].[DoiNguYT]    Script Date: 12/20/2021 4:30:41 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DoiNguYT]') AND type in (N'U'))
DROP TABLE [dbo].[DoiNguYT]
GO
/****** Object:  Table [dbo].[DanhSachTiem]    Script Date: 12/20/2021 4:30:41 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DanhSachTiem]') AND type in (N'U'))
DROP TABLE [dbo].[DanhSachTiem]
GO
/****** Object:  Table [dbo].[DanhSachTiem]    Script Date: 12/20/2021 4:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhSachTiem](
	[MaSoDS] [varchar](50) NOT NULL,
	[TenDanhSach] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DanhSachTiem] PRIMARY KEY CLUSTERED 
(
	[MaSoDS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoiNguYT]    Script Date: 12/20/2021 4:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoiNguYT](
	[MaDoiNgu] [varchar](50) NOT NULL,
	[TenDoiNgu] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DoiNguYT] PRIMARY KEY CLUSTERED 
(
	[MaDoiNgu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DotTiem]    Script Date: 12/20/2021 4:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DotTiem](
	[MaDotTiem] [varchar](50) NOT NULL,
	[NgayTiem] [date] NOT NULL,
	[MaQuan] [varchar](50) NOT NULL,
	[MaPhuong] [varchar](50) NOT NULL,
	[MaLoai] [varchar](50) NOT NULL,
	[MaSoDS] [varchar](50) NOT NULL,
	[MaDoiNgu] [varchar](50) NOT NULL,
 CONSTRAINT [PK_DotTiem] PRIMARY KEY CLUSTERED 
(
	[MaDotTiem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiVacXin]    Script Date: 12/20/2021 4:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiVacXin](
	[MaLoai] [varchar](50) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
	[SoMuiTiem] [int] NOT NULL,
 CONSTRAINT [PK_LoaiVacXin] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDan]    Script Date: 12/20/2021 4:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDan](
	[CMND] [varchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[GioiTinh] [varchar](50) NOT NULL,
	[NamSinh] [varchar](50) NOT NULL,
	[SDT] [varchar](50) NOT NULL,
	[MaQuan] [varchar](50) NOT NULL,
	[MaPhuong] [varchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[MaSoDS] [varchar](50) NOT NULL,
 CONSTRAINT [PK_NguoiDan] PRIMARY KEY CLUSTERED 
(
	[CMND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVienYT]    Script Date: 12/20/2021 4:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVienYT](
	[MaNhanVienYT] [varchar](50) NOT NULL,
	[TenNhanVienYT] [nvarchar](50) NOT NULL,
	[MaDoiNgu] [varchar](50) NOT NULL,
	[SDT] [varchar](50) NOT NULL,
	[CoQuan] [nvarchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_NhanVienYT] PRIMARY KEY CLUSTERED 
(
	[MaNhanVienYT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuChungNhan]    Script Date: 12/20/2021 4:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuChungNhan](
	[MaSoPhieu] [varchar](50) NOT NULL,
	[MaDotTiem] [varchar](50) NOT NULL,
	[LanTiem] [int] NOT NULL,
	[CMND] [varchar](50) NOT NULL,
	[MaNhanVienYT] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PhieuChungNhan] PRIMARY KEY CLUSTERED 
(
	[MaSoPhieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phuong]    Script Date: 12/20/2021 4:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phuong](
	[MaPhuong] [varchar](50) NOT NULL,
	[TenPhuong] [nvarchar](50) NOT NULL,
	[MaQuan] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Phuong] PRIMARY KEY CLUSTERED 
(
	[MaPhuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quan]    Script Date: 12/20/2021 4:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quan](
	[MaQuan] [varchar](50) NOT NULL,
	[TenQuan] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Quan] PRIMARY KEY CLUSTERED 
(
	[MaQuan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 12/20/2021 4:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [varchar](50) NOT NULL,
	[TenQuyen] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/20/2021 4:30:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenTaiKhoan] [varchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[MaQuyen] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS001
', N'Danh Sách 1
')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS002', N'Danh Sách 2')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS003', N'Danh Sách 3')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS004', N'Danh Sách 4')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS005', N'Danh Sách 5')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS006', N'Danh Sách 6')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS007', N'Danh Sách 7')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS008', N'Danh Sách 8')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS009', N'Danh Sách 9')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS010', N'Danh Sách 10')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS011', N'Danh Sách 11')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS012', N'Danh Sách 12')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS013', N'Danh Sách 13')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS014', N'Danh Sách 14')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS015', N'Danh Sách 15')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS016', N'Danh Sách 16')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS017', N'Danh Sách 17')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS018', N'Danh Sách 18')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS019', N'Danh Sách 19')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS020', N'Danh Sách 20')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS021', N'Danh Sách 21')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS022', N'Danh Sách 22')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS023', N'Danh Sách 23')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS024', N'Danh Sách 24')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS025', N'Danh Sách 25')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS026', N'Danh Sách 26')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS027', N'Danh Sách 27')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS028', N'Danh Sách 28')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS029', N'Danh Sách 29')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS030', N'Danh Sách 30')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS031', N'Danh Sách 31')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS032', N'Danh Sách 32')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS033', N'Danh Sách 33')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS034', N'Danh Sách 34')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS035', N'Danh Sách 35')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS036', N'Danh Sách 36')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS037', N'Danh Sách 37')
INSERT [dbo].[DanhSachTiem] ([MaSoDS], [TenDanhSach]) VALUES (N'DS038', N'Danh Sách 38')
GO
INSERT [dbo].[DoiNguYT] ([MaDoiNgu], [TenDoiNgu]) VALUES (N'DN001
', N'Đội ngũ 1
')
INSERT [dbo].[DoiNguYT] ([MaDoiNgu], [TenDoiNgu]) VALUES (N'DN002', N'Đội ngũ 2')
INSERT [dbo].[DoiNguYT] ([MaDoiNgu], [TenDoiNgu]) VALUES (N'DN003', N'Đội ngũ 3')
INSERT [dbo].[DoiNguYT] ([MaDoiNgu], [TenDoiNgu]) VALUES (N'DN004', N'Đội ngũ 4')
INSERT [dbo].[DoiNguYT] ([MaDoiNgu], [TenDoiNgu]) VALUES (N'DN005', N'Đội ngũ 5')
INSERT [dbo].[DoiNguYT] ([MaDoiNgu], [TenDoiNgu]) VALUES (N'DN006', N'Đội ngũ 6')
INSERT [dbo].[DoiNguYT] ([MaDoiNgu], [TenDoiNgu]) VALUES (N'DN007', N'Đội ngũ 7')
INSERT [dbo].[DoiNguYT] ([MaDoiNgu], [TenDoiNgu]) VALUES (N'DN008', N'Đội ngũ 8')
INSERT [dbo].[DoiNguYT] ([MaDoiNgu], [TenDoiNgu]) VALUES (N'DN009', N'Đội ngũ 9')
INSERT [dbo].[DoiNguYT] ([MaDoiNgu], [TenDoiNgu]) VALUES (N'DN010', N'Đội ngũ 10')
GO
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19001
', CAST(N'2021-01-23' AS Date), N'Q1', N'P003', N'VXJ', N'DS001
', N'DN001
')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19002', CAST(N'2021-10-24' AS Date), N'Q1', N'P002', N'VXJ', N'DS002', N'DN001
')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19003', CAST(N'2021-10-25' AS Date), N'Q2', N'P122', N'VXJ', N'DS003', N'DN001
')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19004', CAST(N'2021-10-26' AS Date), N'Q2', N'P128', N'VXJ', N'DS004', N'DN001
')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19005', CAST(N'2021-10-27' AS Date), N'Q3', N'P142', N'VXJ', N'DS005', N'DN001
')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19006', CAST(N'2021-10-28' AS Date), N'Q3', N'P141', N'VXJ', N'DS006', N'DN002')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19007', CAST(N'2021-10-29' AS Date), N'Q4', N'P185', N'VXAZ', N'DS007', N'DN002')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19008', CAST(N'2021-10-30' AS Date), N'Q4', N'P177', N'VXAZ', N'DS008', N'DN002')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19009', CAST(N'2021-10-31' AS Date), N'Q5', N'P193', N'VXAZ', N'DS009', N'DN002')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19010', CAST(N'2021-11-01' AS Date), N'Q5', N'P190', N'VXAZ', N'DS010', N'DN002')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19011', CAST(N'2021-11-01' AS Date), N'Q6', N'P205', N'VXAZ', N'DS011', N'DN002')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19012', CAST(N'2021-11-01' AS Date), N'Q6', N'P202', N'VXAZ', N'DS012', N'DN002')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19013', CAST(N'2021-11-03' AS Date), N'Q7', N'P226', N'VXC', N'DS013', N'DN003')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19014', CAST(N'2021-11-04' AS Date), N'Q7', N'P227', N'VXC', N'DS014', N'DN003')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19015', CAST(N'2021-11-05' AS Date), N'Q8', N'P215', N'VXC', N'DS015', N'DN003')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19016', CAST(N'2021-11-06' AS Date), N'Q8', N'P216', N'VXC', N'DS016', N'DN003')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19017', CAST(N'2021-11-07' AS Date), N'Q9', N'P233', N'VXC', N'DS017', N'DN003')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19018', CAST(N'2021-11-08' AS Date), N'Q9', N'P234', N'VXC', N'DS018', N'DN003')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19019', CAST(N'2021-11-09' AS Date), N'Q10', N'P148', N'VXGCV', N'DS019', N'DN004')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19020', CAST(N'2021-11-10' AS Date), N'Q10', N'P149', N'VXGCV', N'DS020', N'DN004')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19021', CAST(N'2021-11-11' AS Date), N'Q11', N'P159', N'VXGCV', N'DS021', N'DN004')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19022', CAST(N'2021-11-12' AS Date), N'Q11', N'P160', N'VXGCV', N'DS022', N'DN004')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19023', CAST(N'2021-11-13' AS Date), N'Q12', N'P014', N'VXGCV', N'DS023', N'DN004')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19024', CAST(N'2021-11-14' AS Date), N'Q12', N'P015', N'VXGCV', N'DS024', N'DN004')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19025', CAST(N'2021-11-15' AS Date), N'QBT', N'P243', N'VXS', N'DS025', N'DN005')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19026', CAST(N'2021-11-16' AS Date), N'QBT', N'P244', N'VXS', N'DS026', N'DN005')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19027', CAST(N'2021-11-17' AS Date), N'QBTH', N'P042', N'VXS', N'DS027', N'DN005')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19028', CAST(N'2021-11-18' AS Date), N'QBTH', N'P043', N'VXS', N'DS028', N'DN005')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19029', CAST(N'2021-11-19' AS Date), N'QGV', N'P028', N'VXS', N'DS029', N'DN005')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19030', CAST(N'2021-11-20' AS Date), N'QGV', N'P029', N'VXS', N'DS030', N'DN005')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19031', CAST(N'2021-11-21' AS Date), N'QPN', N'P091', N'VXS', N'DS031', N'DN005')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19032', CAST(N'2021-11-20' AS Date), N'QPN', N'P092', N'VXVC', N'DS032', N'DN006')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19033', CAST(N'2021-11-23' AS Date), N'QTB', N'P064', N'VXVC', N'DS033', N'DN006')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19034', CAST(N'2021-11-24' AS Date), N'QTB', N'P065', N'VXVC', N'DS034', N'DN006')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19035', CAST(N'2021-11-25' AS Date), N'QTD', N'P237', N'VXVC', N'DS035', N'DN006')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19036', CAST(N'2021-11-26' AS Date), N'QTD', N'P238', N'VXVC', N'DS036', N'DN006')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19037', CAST(N'2021-11-27' AS Date), N'QTP', N'P075', N'VXVC', N'DS037', N'DN006')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19038', CAST(N'2021-11-28' AS Date), N'QTP', N'P076', N'VXVC', N'DS038', N'DN006')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19039', CAST(N'2021-11-29' AS Date), N'Q4', N'P185', N'VXAZ', N'DS007', N'DN002')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19040', CAST(N'2021-11-30' AS Date), N'Q4', N'P177', N'VXAZ', N'DS008', N'DN002')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19041', CAST(N'2021-12-01' AS Date), N'Q5', N'P193', N'VXAZ', N'DS009', N'DN002')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19042', CAST(N'2021-12-02' AS Date), N'Q5', N'P190', N'VXAZ', N'DS010', N'DN002')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19043', CAST(N'2021-12-03' AS Date), N'Q6', N'P205', N'VXAZ', N'DS011', N'DN002')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19044', CAST(N'2021-12-04' AS Date), N'Q6', N'P202', N'VXAZ', N'DS012', N'DN002')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19045', CAST(N'2021-12-05' AS Date), N'Q7', N'P226', N'VXC', N'DS013', N'DN003')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19046', CAST(N'2021-12-06' AS Date), N'Q7', N'P227', N'VXC', N'DS014', N'DN003')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19047', CAST(N'2021-12-07' AS Date), N'Q8', N'P215', N'VXC', N'DS015', N'DN003')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19048', CAST(N'2021-12-08' AS Date), N'Q8', N'P216', N'VXC', N'DS016', N'DN003')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19049', CAST(N'2021-12-09' AS Date), N'Q9', N'P233', N'VXC', N'DS017', N'DN003')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19050', CAST(N'2021-12-10' AS Date), N'Q9', N'P234', N'VXC', N'DS018', N'DN003')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19051', CAST(N'2021-12-11' AS Date), N'Q10', N'P148', N'VXGCV', N'DS019', N'DN004')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19052', CAST(N'2021-12-12' AS Date), N'Q10', N'P149', N'VXGCV', N'DS020', N'DN004')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19053', CAST(N'2021-12-13' AS Date), N'Q11', N'P159', N'VXGCV', N'DS021', N'DN004')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19054', CAST(N'2021-12-14' AS Date), N'Q11', N'P160', N'VXGCV', N'DS022', N'DN004')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19055', CAST(N'2021-12-15' AS Date), N'Q12', N'P014', N'VXGCV', N'DS023', N'DN004')
INSERT [dbo].[DotTiem] ([MaDotTiem], [NgayTiem], [MaQuan], [MaPhuong], [MaLoai], [MaSoDS], [MaDoiNgu]) VALUES (N'COVID19056', CAST(N'2021-12-16' AS Date), N'Q12', N'P015', N'VXGCV', N'DS024', N'DN004')
GO
INSERT [dbo].[LoaiVacXin] ([MaLoai], [TenLoai], [SoMuiTiem]) VALUES (N'VXAZ', N'AstraZeneca', 2)
INSERT [dbo].[LoaiVacXin] ([MaLoai], [TenLoai], [SoMuiTiem]) VALUES (N'VXC', N'Comirnaty ', 2)
INSERT [dbo].[LoaiVacXin] ([MaLoai], [TenLoai], [SoMuiTiem]) VALUES (N'VXGCV', N'Gam-COVID-Vac', 2)
INSERT [dbo].[LoaiVacXin] ([MaLoai], [TenLoai], [SoMuiTiem]) VALUES (N'VXJ', N'Janssen ', 1)
INSERT [dbo].[LoaiVacXin] ([MaLoai], [TenLoai], [SoMuiTiem]) VALUES (N'VXS', N'Spikevax', 2)
INSERT [dbo].[LoaiVacXin] ([MaLoai], [TenLoai], [SoMuiTiem]) VALUES (N'VXVC', N'Vero Cell', 2)
GO
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1611700832', N'Nguyễn Đức Hoài ', N'Nam', N'24/5/1991', N'0313643598', N'Q2', N'P122', N'327/44 đường số 27', N'DS003')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1611702220', N'Nguyễn Thành Đạt', N'Nam', N'5/4/1990', N'0943735211', N'Q2', N'P122', N'130/27 đường số 19', N'DS003')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711100257', N'Hoàng Công Minh', N'Nam', N'25/3/1989', N'0957926191', N'Q12', N'P014', N'334/24 đường số 4', N'DS023')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711120060', N'Chế Thụy Tường Vy', N'Nu', N'27/6/1980', N'0379279211', N'Q2', N'P128', N'320/58/2 đường số 8', N'DS004')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711120064', N'Lê Minh Phương', N'Nu', N'27/2/2007', N'0396218399', N'Q3', N'P142', N'297/24 đường số 20', N'DS005')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711120065', N'Quách Khánh Lương', N'Nam', N'6/11/1977', N'0335694443', N'Q3', N'P142', N'146/69/40 đường số 17', N'DS005')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711140520', N'Nguyễn Bé Thảo', N'Nu', N'21/6/1975', N'0968848874', N'QTB', N'P065', N'353/1/24 đường số 25', N'DS034')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711180524', N'Nguyễn Xuân Phong', N'Nam', N'9/11/1974', N'0349579958', N'Q9', N'P233', N'327/73/2 đường số 4', N'DS017')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711180569', N'Lê Hữu Đăng', N'Nam', N'7/9/1957', N'0306360261', N'Q9', N'P233', N'326/99 đường số 21', N'DS017')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711181032', N'Châu Thị Kim Hà', N'Nu', N'17/1/1991', N'0376202318', N'Q9', N'P233', N'251/95/32 đường số 19', N'DS017')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711181124', N'Lê Thị Ly', N'Nu', N'27/4/1954', N'0939381181', N'Q9', N'P233', N'109/45/28 đường số 11', N'DS017')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711201817', N'Nguyễn Quang Tuấn', N'Nam', N'8/3/2008', N'0968511706', N'QGV', N'P029', N'26/30 đường số 19', N'DS030')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711230473', N'Đào Thị Thảo Trang', N'Nu', N'14/2/1955', N'0981630357', N'QTB', N'P065', N'13/90/4 đường số 22', N'DS034')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711240426', N'Trần Thị Thuỳ Trang', N'Nu', N'21/5/1983', N'0382398767', N'Q4', N'P177', N'188/73 đường số 16', N'DS008')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711240524', N'Ngô Thị Hiền', N'Nu', N'13/7/1956', N'0901319858', N'QTB', N'P065', N'270/21/16 đường số 13', N'DS034')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711240758', N'Bùi Võ Thảo Vy', N'Nu', N'13/10/1980', N'0942857557', N'QTB', N'P065', N'145/81/20 đường số 4', N'DS034')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711240845', N'Lê Hoàng Oanh', N'Nu', N'20/8/1989', N'0303967457', N'Q4', N'P177', N'244/28/42 đường số 11', N'DS008')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711240871', N'Phạm Hoàng Tú Uyên', N'Nu', N'30/3/1977', N'0357932350', N'Q4', N'P177', N'250/70 đường số 2', N'DS008')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711251962', N'Trương Đình Rin', N'Nam', N'1/8/1959', N'0397845730', N'Q12', N'P015', N'57/84/46 đường số 2', N'DS024')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711270221', N'Bùi Thị Thùy Linh', N'Nu', N'30/8/2002', N'0906729582', N'Q3', N'P141', N'398/97 đường số 17', N'DS006')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711270282', N'Nguyễn Thị Tuyết Huê', N'Nu', N'2/11/1950', N'0310727379', N'Q3', N'P141', N'323/68/28 đường số 18', N'DS006')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711270305', N'Từ Thị Ánh Tuyết', N'Nu', N'1/7/1974', N'0908381404', N'Q3', N'P141', N'358/67/18 đường số 5', N'DS006')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711270410', N'Nguyễn Thị Thúy Quỳnh', N'Nu', N'2/1/1983', N'0907978366', N'QTB', N'P065', N'40/68/18 đường số 21', N'DS034')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711270726', N'NguyễN Thị Vân Anh', N'Nu', N'22/3/1959', N'0303776714', N'QTB', N'P065', N'8/69 đường số 28', N'DS034')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711270954', N'Trần Thị Ngọc Quí', N'Nu', N'17/3/2001', N'0980911831', N'Q3', N'P141', N'343/79/6 đường số 17', N'DS006')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711270975', N'Lê Thị Thảo', N'Nu', N'3/4/1996', N'0920468594', N'QTB', N'P065', N'210/68/32 đường số 3', N'DS034')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711270989', N'Nguyễn Thị Phương Thu', N'Nu', N'13/3/1994', N'0376732668', N'QTB', N'P065', N'103/93/28 đường số 13', N'DS034')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711271227', N'Lê Thị Minh Mẫn', N'Nu', N'20/9/1998', N'0326415628', N'QTB', N'P065', N'359/11 đường số 25', N'DS034')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711271298', N'Nguyễn Phạm Trường Vinh', N'Nam', N'18/11/2001', N'0967954523', N'QTB', N'P065', N'43/2/20 đường số 9', N'DS034')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711271406', N'Ngô Gia Phương', N'Nu', N'30/6/1975', N'0938544280', N'QTD', N'P237', N'367/11 đường số 23', N'DS035')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711271506', N'Nguyễn Thị Thanh Ngân', N'Nu', N'11/10/1957', N'0322706521', N'Q3', N'P141', N'314/42 đường số 13', N'DS006')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711290235', N'Nguyễn Thị Khánh Hòa', N'Nu', N'8/5/1981', N'0979763499', N'Q5', N'P193', N'368/52 đường số 20', N'DS009')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711700917', N'Nguyễn Thị Hương Thảo', N'Nu', N'8/12/1979', N'0946161272', N'Q2', N'P122', N'274/81 đường số 5', N'DS003')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711701410', N'Nguyễn Ngô Hiền Anh', N'Nam', N'13/11/1985', N'0357103489', N'Q2', N'P122', N'376/54 đường số 3', N'DS003')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711701433', N'Nguyễn Minh Châu', N'Nam', N'16/9/1967', N'0911316242', N'Q2', N'P122', N'222/83/12 đường số 27', N'DS003')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711701928', N'Nguyễn Nhật Minh', N'Nam', N'28/10/1971', N'0358242202', N'Q2', N'P122', N'324/87 đường số 2', N'DS003')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711720016', N'Nguyễn Thị Tường Vy', N'Nu', N'7/1/1998', N'0389598992', N'Q3', N'P142', N'19/15 đường số 13', N'DS005')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1711720099', N'Đinhthị Thanh Ngân', N'Nu', N'12/2/1965', N'0975270937', N'Q3', N'P142', N'227/92 đường số 7', N'DS005')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811010003', N'Phạm Kinh Bắc', N'Nam', N'10/9/2008', N'0373216358', N'Q12', N'P015', N'40/45/8 đường số 11', N'DS024')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811032817', N'Nguyễn Trung Vịnh', N'Nam', N'11/2/1997', N'0913567689', N'QTD', N'P237', N'227/88/24 đường số 14', N'DS035')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811051620', N'Huỳnh Minh Tính', N'Nam', N'29/5/1955', N'0916462396', N'QBT', N'P243', N'289/6 đường số 27', N'DS025')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811060158', N'Nguyễn Thành Đạt', N'Nam', N'20/5/1968', N'0924755339', N'Q1', N'P003', N'64/13 đường số 29', N'DS001
')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811061355', N'Phan Ngọc Trí', N'Nam', N'8/7/1980', N'0301279873', N'Q1', N'P003', N'115/75 đường số 5', N'DS001
')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811061512', N'Mai Tùng Long', N'Nam', N'2/4/2008', N'0358105577', N'Q1', N'P003', N'262/55 đường số 10', N'DS001
')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811061542', N'Phạm Thái Tài', N'Nam', N'23/7/1979', N'0325154539', N'Q1', N'P003', N'313/78 đường số 23', N'DS001
')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811061922', N'Nguyễn Duy Kha', N'Nam', N'20/10/1967', N'0304745779', N'Q1', N'P003', N'104/4 đường số 23', N'DS001
')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811061967', N'Dương Thanh Như', N'Nu', N'3/1/2003', N'0368137108', N'Q1', N'P003', N'337/45 đường số 10', N'DS001
')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811062221', N'Lê Trọng Nguyên', N'Nam', N'16/11/1974', N'0968126258', N'Q1', N'P003', N'257/7 đường số 22', N'DS001
')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811062399', N'Trần Hùng Cường', N'Nam', N'8/3/1967', N'0922985168', N'Q1', N'P003', N'80/62 đường số 18', N'DS001
')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811062453', N'Vương Minh Khang', N'Nam', N'2/5/1960', N'0385270906', N'QPN', N'P091', N'26/19/22 đường số 3', N'DS031')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811062984', N'Nguyễn Đăng Khang', N'Nam', N'7/7/1983', N'0944720262', N'Q1', N'P003', N'102/93/30 đường số 12', N'DS001
')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811063108', N'Trần Văn Sang', N'Nam', N'23/6/1973', N'0391288964', N'Q1', N'P003', N'323/70/30 đường số 9', N'DS001
')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811063212', N'Nguyễn Trung Tuyến', N'Nam', N'25/9/1997', N'0353195138', N'Q1', N'P003', N'267/47 đường số 19', N'DS001
')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811063414', N'Nguyễn Phạm Kiệt', N'Nam', N'19/9/1952', N'0915607783', N'Q1', N'P002', N'395/31/46 đường số 9', N'DS002')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811063546', N'Phạm Minh Quốc', N'Nam', N'26/8/1978', N'0383345143', N'Q1', N'P002', N'293/48 đường số 6', N'DS002')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811063583', N'Lê Quốc Đạt', N'Nam', N'16/4/1995', N'0994182582', N'Q1', N'P002', N'374/64 đường số 4', N'DS002')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811070052', N'Lê Liên Hưng', N'Nam', N'25/6/1992', N'0944128219', N'QTP', N'P076', N'242/4 đường số 24', N'DS038')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811070215', N'Lê Tấn Vinh', N'Nam', N'19/3/1953', N'0975260419', N'QTP', N'P076', N'342/26/28 đường số 14', N'DS038')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811070256', N'Phạm Nhật Quang', N'Nam', N'11/5/1978', N'0397729895', N'QTP', N'P076', N'15/50/30 đường số 22', N'DS038')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811070413', N'Võ Văn Minh Thành', N'Nam', N'26/1/1975', N'0991441431', N'QTP', N'P076', N'255/64/18 đường số 17', N'DS038')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811070473', N'Phạm Gia Huy', N'Nam', N'28/8/1963', N'0327591449', N'QTP', N'P076', N'367/13 đường số 26', N'DS038')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811070487', N'Võ Trọng Nhân', N'Nam', N'25/9/1961', N'0344100202', N'QTP', N'P076', N'16/8 đường số 24', N'DS038')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811100115', N'Nguyễn Trọng Nguyễn', N'Nam', N'30/4/1957', N'0911382766', N'Q12', N'P014', N'287/63/8 đường số 27', N'DS023')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811110293', N'Phan Phước Thảnh', N'Nam', N'26/12/1994', N'0986457283', N'Q12', N'P014', N'34/92 đường số 16', N'DS023')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811110420', N'Lê Thị Ngọc Mai', N'Nu', N'9/9/1977', N'0907806870', N'Q12', N'P014', N'348/44/16 đường số 7', N'DS023')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811112660', N'Võ Lê Ngân Hà', N'Nu', N'7/2/1988', N'0929416892', N'Q12', N'P014', N'141/37 đường số 24', N'DS023')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811142631', N'Nguyễn Thanh Bình', N'Nam', N'22/10/1957', N'0365920692', N'QPN', N'P091', N'53/26/10 đường số 27', N'DS031')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811142772', N'Nguyễn Phương Thảo', N'Nu', N'19/1/1962', N'0303517267', N'Q6', N'P205', N'282/99 đường số 18', N'DS011')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811142827', N'Đinh Trương Hoàn Thiện Như Ý', N'Nu', N'25/10/1992', N'0919972837', N'QPN', N'P091', N'237/38/16 đường số 12', N'DS031')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811143871', N'Nguyễn Thị An Bình', N'Nu', N'21/2/1958', N'0327450415', N'QPN', N'P091', N'265/84/4 đường số 9', N'DS031')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811144427', N'Lê Bá Minh', N'Nam', N'27/4/1979', N'0363479799', N'QPN', N'P091', N'288/8/16 đường số 22', N'DS031')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811144590', N'Trần Kiều Phương Anh', N'Nu', N'21/12/2007', N'0365134963', N'Q6', N'P205', N'302/49/22 đường số 15', N'DS011')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811144946', N'Nguyễn Thị Trúc Linh', N'Nu', N'26/8/1997', N'0371209171', N'Q6', N'P205', N'213/7 đường số 6', N'DS011')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811145020', N'Lưu Ngân Diệu', N'Nu', N'22/1/1962', N'0364218989', N'Q6', N'P205', N'375/68 đường số 3', N'DS011')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811150033', N'Huỳnh Minh Cường', N'Nam', N'26/2/1954', N'0374544865', N'Q5', N'P193', N'332/57/34 đường số 25', N'DS009')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811153358', N'Trần Thị Ngọc Trâm', N'Nu', N'6/7/1995', N'0314267516', N'QTD', N'P237', N'260/27/44 đường số 25', N'DS035')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811160217', N'Hà Cẩm Hường', N'Nu', N'16/2/1985', N'0323317980', N'Q5', N'P193', N'93/71/26 đường số 4', N'DS009')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811160288', N'Nguyễn Hoàng Long', N'Nam', N'17/1/1959', N'0382869402', N'Q1', N'P002', N'202/69/46 đường số 20', N'DS002')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811161488', N'Phạm Ngọc Anh Thư', N'Nu', N'2/3/1968', N'0973591341', N'Q5', N'P193', N'140/98 đường số 1', N'DS009')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811163664', N'Nguyễn Thị Thu Hương', N'Nu', N'25/1/1951', N'0320796460', N'Q6', N'P205', N'350/48 đường số 23', N'DS011')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811163741', N'Trương Thị Huỳnh Hương', N'Nu', N'16/9/1994', N'0996542146', N'Q5', N'P190', N'314/64 đường số 16', N'DS010')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811174026', N'Nguyễn Thị Thuỷ Tiên', N'Nu', N'16/9/1962', N'0337836247', N'QPN', N'P091', N'19/41 đường số 29', N'DS031')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811180019', N'Phạm Thị Kim Ánh', N'Nu', N'18/12/1950', N'0390723132', N'QTD', N'P237', N'177/3 đường số 21', N'DS035')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811180369', N'Ngô Thúy Liễu', N'Nu', N'17/2/1989', N'0347611435', N'Q9', N'P233', N'290/40/46 đường số 26', N'DS017')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811180420', N'Trần Thị Tuyết Băng', N'Nu', N'1/2/1966', N'0321868207', N'QTD', N'P237', N'227/24 đường số 25', N'DS035')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811180612', N'Phan Thị Phượng Thu', N'Nu', N'1/1/1984', N'0383888358', N'QTD', N'P237', N'55/21 đường số 17', N'DS035')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811181261', N'Tạ Mỹ Linh', N'Nu', N'23/9/1974', N'0963349911', N'QTD', N'P237', N'238/71 đường số 15', N'DS035')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811183072', N'Trương Thị Thu Hòa', N'Nu', N'21/4/1982', N'0372321113', N'QTD', N'P237', N'40/94 đường số 25', N'DS035')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811183103', N'Lê Thị Mỹ Linh', N'Nu', N'9/11/1987', N'0363894401', N'Q9', N'P233', N'191/40 đường số 7', N'DS017')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811190010', N'Huỳnh Quế Anh', N'Nu', N'22/7/1986', N'0308671986', N'Q9', N'P233', N'206/28 đường số 28', N'DS017')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811190017', N'Nguyễn Phạm Nhật Anh', N'Nam', N'27/9/1973', N'0371661633', N'Q9', N'P233', N'16/13 đường số 20', N'DS017')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811190248', N'Huỳnh Duyệt Thu Tâm', N'Nu', N'10/1/1991', N'0908283918', N'Q9', N'P233', N'249/19/32 đường số 29', N'DS017')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811190291', N'Đỗ Văn Tiến', N'Nam', N'23/7/1975', N'0397709402', N'Q9', N'P233', N'339/34 đường số 18', N'DS017')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811190297', N'Lê Thị Minh Trang', N'Nu', N'28/12/1994', N'0912129662', N'QPN', N'P091', N'115/62 đường số 20', N'DS031')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811190308', N'Trương Thị Bảo Trân', N'Nu', N'15/11/1954', N'0986510760', N'Q9', N'P234', N'327/23 đường số 20', N'DS018')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811190312', N'Trần Tuyết Trinh', N'Nu', N'28/10/1958', N'0967668982', N'Q9', N'P234', N'359/67/10 đường số 27', N'DS018')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811190334', N'Lê Hoàng Mỹ Uyên', N'Nu', N'16/9/1955', N'0994290124', N'QTD', N'P237', N'157/20 đường số 4', N'DS035')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811190490', N'Nguyễn Minh Thế', N'Nam', N'17/9/1971', N'0907827385', N'Q9', N'P234', N'51/72 đường số 3', N'DS018')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811190493', N'Đỗ Thị Trường Thọ', N'Nu', N'8/12/1964', N'0316989426', N'Q9', N'P234', N'345/48 đường số 16', N'DS018')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811190539', N'Lê Thị Thuỳ Trang', N'Nu', N'16/5/1989', N'0901628331', N'Q9', N'P234', N'392/55/18 đường số 26', N'DS018')
GO
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811190654', N'Nguyễn Thị Thu Trang', N'Nu', N'29/5/1956', N'0986803128', N'Q9', N'P234', N'64/68/48 đường số 19', N'DS018')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811190661', N'Phạm Khả Vy', N'Nu', N'15/9/1982', N'0922179613', N'Q9', N'P234', N'321/87/10 đường số 11', N'DS018')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811190662', N'Phạm Ngọc Cẩm Vy', N'Nu', N'2/11/1967', N'0361355322', N'Q9', N'P234', N'248/43/12 đường số 9', N'DS018')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811190810', N'Lê Vỉ Khan', N'Nam', N'5/3/1996', N'0320816597', N'Q9', N'P234', N'194/14/8 đường số 15', N'DS018')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811190820', N'Nguyễn Thị Ngọc', N'Nu', N'8/7/1983', N'0981328193', N'QTD', N'P237', N'226/81/36 đường số 1', N'DS035')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811190834', N'Nguyễn Huỳnh Kim Thoa', N'Nu', N'23/5/1987', N'0958292726', N'Q9', N'P234', N'148/83/20 đường số 5', N'DS018')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811190865', N'Lê Thị Hà Phương', N'Nu', N'14/8/1998', N'0328545434', N'Q9', N'P234', N'331/42 đường số 2', N'DS018')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811190867', N'Nguyễn Như Quỳnh', N'Nu', N'14/9/1976', N'0912743250', N'Q9', N'P234', N'380/26/12 đường số 20', N'DS018')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811193257', N'Lê Trịnh Bích Nghi', N'Nu', N'8/10/1964', N'0919255973', N'Q9', N'P234', N'100/2 đường số 23', N'DS018')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811193319', N'Hồ Thị Nhung', N'Nu', N'20/11/1973', N'0398653165', N'Q9', N'P234', N'382/76 đường số 22', N'DS018')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811193378', N'Cao Thị Tuyết', N'Nu', N'29/8/2009', N'0375801188', N'Q9', N'P234', N'108/52/8 đường số 15', N'DS018')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811194900', N'Lê Thiện Quát', N'Nam', N'2/10/2000', N'0939214428', N'Q10', N'P148', N'345/95 đường số 19', N'DS019')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811200084', N'Nguyễn Ngọc Dung', N'Nu', N'7/9/1973', N'0981101629', N'QPN', N'P092', N'286/57/28 đường số 22', N'DS032')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811200245', N'Mai Xuân Kỳ', N'Nam', N'16/9/1961', N'0321382825', N'Q11', N'P159', N'186/7 đường số 13', N'DS021')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811200448', N'Phan Hoài Phong', N'Nam', N'1/6/1954', N'0376314679', N'Q11', N'P159', N'6/63/44 đường số 15', N'DS021')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811200630', N'Nguyễn Hà Bích Trâm', N'Nu', N'24/8/1958', N'0953337713', N'QPN', N'P092', N'176/45 đường số 14', N'DS032')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811200840', N'Tống Trần Phước Tiến', N'Nam', N'24/11/1978', N'0302401599', N'Q11', N'P159', N'287/60/34 đường số 21', N'DS021')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811201129', N'Lê Thị Vân Khánh', N'Nu', N'1/6/1954', N'0345358208', N'QPN', N'P092', N'8/64 đường số 28', N'DS032')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811201179', N'Hoàng Hồng Thư', N'Nu', N'12/2/1996', N'0936140133', N'QPN', N'P092', N'300/89/18 đường số 26', N'DS032')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811201772', N'Nguyễn Thảo Quyên', N'Nu', N'11/11/1960', N'0902635512', N'QPN', N'P092', N'281/1/8 đường số 2', N'DS032')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811202297', N'Phạm Thị Phương Dung', N'Nu', N'7/11/1993', N'0336788941', N'Q11', N'P159', N'371/74/24 đường số 6', N'DS021')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811202936', N'Nguyễn Thị Hà Xuân', N'Nu', N'17/12/1963', N'0930460955', N'Q1', N'P002', N'291/61 đường số 10', N'DS002')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811202955', N'Nguyễn Đăng Khoa', N'Nam', N'19/7/2000', N'0993249845', N'Q11', N'P159', N'200/82/18 đường số 21', N'DS021')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811203084', N'Nguyễn Thanh Hưng', N'Nam', N'21/12/1966', N'0910741265', N'Q11', N'P159', N'85/66/44 đường số 2', N'DS021')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811231477', N'Lê Đình Anh Khoa', N'Nam', N'16/12/1967', N'0344441844', N'Q6', N'P205', N'88/86/24 đường số 3', N'DS011')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811233166', N'Phạm Sỹ Kha', N'Nam', N'10/11/1993', N'0954631622', N'Q6', N'P205', N'76/59/48 đường số 5', N'DS011')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811240114', N'Nguyễn Trần Trúc Linh', N'Nu', N'12/1/1964', N'0378698417', N'QTD', N'P237', N'34/82/34 đường số 22', N'DS035')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811250423', N'Trần Đại Lợi', N'Nam', N'6/5/1996', N'0339372298', N'QBT', N'P243', N'36/48/12 đường số 22', N'DS025')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811250664', N'Huỳnh Văn Ngọc Thảo', N'Nam', N'30/7/2008', N'0992104812', N'QTD', N'P237', N'342/52/42 đường số 16', N'DS035')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811250840', N'Trịnh Hữu Vinh', N'Nam', N'8/10/1990', N'0980579702', N'QPN', N'P092', N'253/42/28 đường số 18', N'DS032')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811250908', N'Lê Bảo Luân', N'Nam', N'12/1/1965', N'0977268689', N'QTD', N'P237', N'310/14 đường số 27', N'DS035')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811251097', N'Phạm Thành Vinh', N'Nam', N'21/6/1991', N'0970658392', N'QBT', N'P243', N'137/80/16 đường số 14', N'DS025')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811251904', N'Nguyễn Long Hồ', N'Nam', N'6/3/1954', N'0953833439', N'Q3', N'P141', N'284/90 đường số 20', N'DS006')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811251937', N'Huỳnh Tấn Lộc', N'Nam', N'28/5/1975', N'0320872260', N'QTD', N'P237', N'228/55/42 đường số 11', N'DS035')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811251943', N'Nguyễn Đình Nam', N'Nam', N'5/9/1973', N'0328568436', N'QBT', N'P243', N'123/4 đường số 28', N'DS025')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811252199', N'Nguyễn Anh Đức', N'Nam', N'5/4/1970', N'0975400766', N'QBT', N'P243', N'343/57/8 đường số 24', N'DS025')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811252255', N'Phạm Đức Công', N'Nam', N'26/9/1977', N'0322296820', N'QBT', N'P243', N'35/28/38 đường số 18', N'DS025')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811252773', N'Phan Văn Nguyên', N'Nam', N'22/4/1987', N'0316929852', N'QBT', N'P243', N'294/83/32 đường số 21', N'DS025')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811252798', N'Nguyễn Văn Khánh', N'Nam', N'28/3/2001', N'0997166389', N'QBT', N'P243', N'95/94/16 đường số 4', N'DS025')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811252823', N'Phạm Hoàng Sang', N'Nam', N'3/8/1996', N'0302387431', N'QBT', N'P244', N'378/33 đường số 18', N'DS026')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811270063', N'Dương Phú Gia', N'Nam', N'2/6/1955', N'0347766674', N'QTP', N'P076', N'181/90 đường số 11', N'DS038')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811270144', N'Tô Thái Nhật Linh', N'Nam', N'29/10/1983', N'0315991829', N'Q3', N'P141', N'208/70/46 đường số 21', N'DS006')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811270289', N'Nguyễn Hữu Thuận', N'Nam', N'26/5/1967', N'0386554952', N'Q3', N'P141', N'75/31 đường số 12', N'DS006')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811270684', N'Phạm Phương Nam', N'Nam', N'3/2/1969', N'0954598663', N'QTP', N'P076', N'144/61 đường số 25', N'DS038')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811271747', N'Lê Nguyễn Cẩm Nhung', N'Nu', N'30/9/1992', N'0318415575', N'Q4', N'P185', N'165/21 đường số 17', N'DS007')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811272679', N'Kiều Thị Mỹ Hạnh', N'Nu', N'16/10/2005', N'0381759188', N'Q4', N'P185', N'191/10 đường số 25', N'DS007')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811273058', N'Nguyễn Thị Triệu Vy', N'Nu', N'21/2/1955', N'0963527427', N'Q4', N'P185', N'389/32 đường số 16', N'DS007')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811273081', N'Nguyễn Huyền Trang', N'Nu', N'8/1/2006', N'0364522121', N'Q4', N'P185', N'188/34/30 đường số 27', N'DS007')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811290373', N'Nguyễn Huy Khánh', N'Nam', N'20/4/1963', N'0343666389', N'Q12', N'P015', N'333/56 đường số 1', N'DS024')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811300043', N'Lê Nguyễn Xuân Giang', N'Nu', N'1/7/1950', N'0321967740', N'Q12', N'P014', N'300/58 đường số 5', N'DS023')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811700485', N'Nguyễn Minh Thư', N'Nu', N'2/8/2008', N'0301521262', N'QPN', N'P092', N'280/96 đường số 20', N'DS032')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811700761', N'Đặng Châu Ngân', N'Nu', N'20/11/1977', N'0341988252', N'QTB', N'P064', N'305/25/42 đường số 26', N'DS033')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811700861', N'Trần Anh Bảo Nhi', N'Nu', N'16/7/2009', N'0901324957', N'QTB', N'P064', N'207/13/24 đường số 11', N'DS033')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811700982', N'Nguyễn Lê Hoàng Ngọc Châu', N'Nu', N'6/8/1974', N'0991402747', N'QTB', N'P064', N'29/31 đường số 7', N'DS033')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811700985', N'Trần Thị Phương Dung', N'Nu', N'11/2/1974', N'0319357764', N'Q2', N'P122', N'100/82/18 đường số 16', N'DS003')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811701116', N'Dương Lê Hồng Trang', N'Nu', N'5/10/1997', N'0368153789', N'QTB', N'P064', N'161/15 đường số 9', N'DS033')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811701240', N'Lê Thị Mỹ Duyên', N'Nu', N'10/3/1965', N'0940851755', N'Q2', N'P128', N'165/93/8 đường số 3', N'DS004')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811701459', N'Mai Hoài Niệm', N'Nu', N'24/8/1957', N'0962795107', N'Q2', N'P128', N'388/93 đường số 22', N'DS004')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811701723', N'Lê Hồng Phước', N'Nam', N'14/10/1964', N'0949147325', N'Q2', N'P128', N'263/77 đường số 5', N'DS004')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811701980', N'Phạm Thị Thanh Ngân', N'Nu', N'22/5/1984', N'0951884144', N'QTB', N'P064', N'61/84 đường số 18', N'DS033')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811702012', N'Vương Đình Thúy Hiền', N'Nu', N'11/2/1971', N'0916882322', N'Q2', N'P128', N'358/13 đường số 12', N'DS004')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811702013', N'Lê Thị Mai Hương', N'Nu', N'28/9/1983', N'0339965518', N'Q2', N'P128', N'338/55/4 đường số 25', N'DS004')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811710043', N'Huỳnh Khánh Tịnh', N'Nam', N'28/7/1967', N'0346766866', N'QTP', N'P076', N'366/69/18 đường số 17', N'DS038')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811720040', N'Quách Tiểu Yến', N'Nu', N'20/6/2002', N'0936643201', N'Q3', N'P142', N'40/96/30 đường số 13', N'DS005')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811720044', N'Mai Bảo Anh', N'Nu', N'13/1/1962', N'0364279596', N'Q3', N'P142', N'134/48 đường số 12', N'DS005')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811720074', N'NguyễN Trâm Anh', N'Nu', N'10/7/1985', N'0959965996', N'Q3', N'P142', N'56/76/44 đường số 9', N'DS005')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811720124', N'Võ Thiện Nhân', N'Nam', N'3/6/1982', N'0329746717', N'Q3', N'P142', N'39/56/38 đường số 24', N'DS005')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811720154', N'Nguyễn Hữu Thọ', N'Nam', N'1/9/1965', N'0348466499', N'Q3', N'P142', N'251/36 đường số 10', N'DS005')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811760101', N'Nguyễn Ngọc Đăng Khoa', N'Nam', N'10/4/1999', N'0996584229', N'QTB', N'P064', N'316/95/16 đường số 2', N'DS033')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811760659', N'Trần Tuyết Anh', N'Nu', N'26/9/2005', N'0991604244', N'Q6', N'P205', N'258/68/4 đường số 11', N'DS011')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811760972', N'Lê Minh Phương', N'Nu', N'16/1/1950', N'0947572428', N'Q6', N'P205', N'387/38/26 đường số 3', N'DS011')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1811763520', N'Trần Ngọc Mai Anh', N'Nu', N'14/8/1982', N'0983919880', N'Q6', N'P205', N'396/24/34 đường số 11', N'DS011')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911061356', N'Đỗ Trí Nhân', N'Nam', N'18/5/1952', N'0977795505', N'Q1', N'P002', N'249/14 đường số 17', N'DS002')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911061490', N'Phan Minh Trí', N'Nam', N'19/3/1996', N'0360640784', N'Q1', N'P002', N'284/43/44 đường số 15', N'DS002')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911061848', N'Trương Bảo Quân', N'Nam', N'5/4/1958', N'0969158679', N'Q1', N'P002', N'257/89 đường số 13', N'DS002')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911061924', N'Trần Diễm Hân', N'Nu', N'16/2/1967', N'0948843751', N'Q6', N'P205', N'241/81 đường số 29', N'DS011')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911067380', N'Dương Trương Duy Phúc', N'Nam', N'25/12/1954', N'0347649418', N'QTD', N'P237', N'126/14 đường số 2', N'DS035')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911090006', N'Tạ Trung Kiên', N'Nam', N'5/5/1952', N'0932625877', N'Q12', N'P015', N'189/44 đường số 20', N'DS024')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911110421', N'Nguyễn Ngọc Trân', N'Nu', N'4/5/1992', N'0970139374', N'Q12', N'P015', N'102/100/2 đường số 2', N'DS024')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911110422', N'Tô Thị Tuyết', N'Nu', N'22/5/1991', N'0933290484', N'Q12', N'P015', N'368/65/22 đường số 21', N'DS024')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911120057', N'Nguyễn Minh Hiếu', N'Nam', N'19/12/1958', N'0329987105', N'Q3', N'P142', N'296/21/32 đường số 26', N'DS005')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911120182', N'Phan Quang Phú', N'Nam', N'17/2/2007', N'0971922990', N'Q3', N'P142', N'92/36/10 đường số 6', N'DS005')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911120329', N'Cao Thị Ngân Tâm', N'Nu', N'8/7/1991', N'0982244651', N'Q3', N'P142', N'264/19/46 đường số 24', N'DS005')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911140065', N'Lê Văn Cường', N'Nam', N'26/6/1979', N'0347996139', N'Q6', N'P205', N'108/50/24 đường số 12', N'DS011')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911140172', N'Phạm Đức Gia Huy', N'Nam', N'11/3/1960', N'0358383420', N'Q6', N'P202', N'231/18 đường số 21', N'DS012')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911140365', N'Nguyễn Thị Tâm Như', N'Nu', N'24/9/1979', N'0960944763', N'QTD', N'P237', N'84/80 đường số 24', N'DS035')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911140629', N'Nguyễn Thị Thúy Vi', N'Nu', N'20/5/1970', N'0924178380', N'Q6', N'P202', N'178/5 đường số 12', N'DS012')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911141901', N'Nguyễn Văn Sỹ', N'Nam', N'15/1/1980', N'0941628348', N'Q6', N'P202', N'235/78/12 đường số 14', N'DS012')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911142377', N'Quang Huy', N'Nam', N'20/11/2005', N'0959659275', N'Q11', N'P159', N'230/93 đường số 15', N'DS021')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911142597', N'Đặng Trung Nhơn', N'Nam', N'7/10/1976', N'0328375855', N'QTD', N'P237', N'390/87/44 đường số 12', N'DS035')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911142834', N'Trần Thị Phương Trà', N'Nu', N'12/5/1977', N'0314602271', N'QTD', N'P238', N'67/28 đường số 29', N'DS036')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911143588', N'Phạm Ngọc Hà', N'Nu', N'12/10/1982', N'0931434226', N'QTD', N'P238', N'27/42/12 đường số 15', N'DS036')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911144165', N'Trần Thiện Tín', N'Nam', N'25/1/1992', N'0970676161', N'Q4', N'P185', N'172/97/44 đường số 5', N'DS007')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911144172', N'Trần Thị Thùy Trang', N'Nu', N'10/4/1973', N'0943959590', N'QTD', N'P238', N'357/17/22 đường số 6', N'DS036')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911145082', N'Nguyễn Hồng Phước', N'Nam', N'8/1/1952', N'0324141392', N'QTD', N'P238', N'229/80/30 đường số 20', N'DS036')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911146331', N'Phạm Duy Khánh', N'Nam', N'26/7/1950', N'0385339452', N'Q6', N'P202', N'9/75 đường số 17', N'DS012')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911146609', N'Nguyễn Thuý Hân', N'Nu', N'23/5/1966', N'0998897577', N'Q6', N'P202', N'90/91/20 đường số 1', N'DS012')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911147219', N'Nguyễn Thị Hương Trà', N'Nu', N'12/10/1983', N'0381309301', N'Q6', N'P202', N'154/91 đường số 4', N'DS012')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911147635', N'Nguyễn Tấn Đạt', N'Nam', N'10/7/1973', N'0905484523', N'QTD', N'P238', N'330/63/48 đường số 23', N'DS036')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911147650', N'Đoàn Thị Cẩm Huỳnh', N'Nu', N'18/5/1979', N'0941751238', N'Q6', N'P202', N'44/83 đường số 23', N'DS012')
GO
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911147726', N'Huỳnh Thị Diệu Vi', N'Nu', N'12/4/2003', N'0315618464', N'Q6', N'P202', N'260/77 đường số 11', N'DS012')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911147823', N'Bùi Xuân Trường', N'Nam', N'8/1/1962', N'0964800497', N'Q6', N'P202', N'384/42/2 đường số 20', N'DS012')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911148006', N'Trần Ngọc Thế Trung', N'Nam', N'9/9/1951', N'0998949791', N'QTD', N'P238', N'301/72 đường số 19', N'DS036')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911150386', N'Nguyễn Thị Kim Ngân', N'Nu', N'28/7/1958', N'0387369669', N'Q5', N'P190', N'289/46/30 đường số 2', N'DS010')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911156526', N'Nguyễn Hoàng Nam', N'Nam', N'10/3/1978', N'0350331496', N'Q4', N'P185', N'64/76/16 đường số 25', N'DS007')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911160602', N'Trương Thị Ngọc Ngân', N'Nu', N'21/1/1950', N'0305391636', N'Q5', N'P190', N'152/93 đường số 12', N'DS010')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911161327', N'Ngô Công Tú', N'Nam', N'17/2/1977', N'0378920200', N'Q5', N'P190', N'372/69 đường số 22', N'DS010')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911161843', N'Nguyễn Thị Tuyết Trinh', N'Nu', N'27/1/1991', N'0997331787', N'Q5', N'P190', N'102/25 đường số 7', N'DS010')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911162055', N'Lê Thị Thu Hiền', N'Nu', N'28/8/1964', N'0367966348', N'Q5', N'P190', N'302/70/20 đường số 16', N'DS010')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911165417', N'Trần Thị Cẩm Tú', N'Nu', N'17/2/1996', N'0989384329', N'Q5', N'P190', N'200/85/30 đường số 17', N'DS010')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911165473', N'Lâm Nhật Thành Công', N'Nam', N'2/9/1957', N'0300756925', N'Q5', N'P190', N'312/1 đường số 8', N'DS010')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911170149', N'Đoàn Thị Huỳnh Như', N'Nu', N'8/9/1977', N'0985877246', N'Q5', N'P190', N'348/10/24 đường số 17', N'DS010')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911181079', N'Trịnh Thị Kim Vi', N'Nu', N'2/4/1957', N'0308243471', N'Q10', N'P148', N'267/53 đường số 5', N'DS019')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911181124', N'Huỳnh Thị Thanh Ngân', N'Nu', N'4/6/2001', N'0959500892', N'Q10', N'P148', N'38/97/36 đường số 22', N'DS019')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911181234', N'Nguyễn Thị Kim Huệ', N'Nu', N'28/6/1977', N'0334735529', N'Q10', N'P148', N'156/79/8 đường số 12', N'DS019')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911181291', N'Ung Thị Bích Nương', N'Nu', N'27/1/2008', N'0946629955', N'Q10', N'P148', N'38/34/14 đường số 7', N'DS019')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911186514', N'Nguyễn Đức Mạnh', N'Nam', N'16/7/1961', N'0948189719', N'Q10', N'P148', N'25/92 đường số 11', N'DS019')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911190647', N'Phạm Trung Tuân', N'Nam', N'12/3/2006', N'0990656108', N'Q10', N'P148', N'3/30/46 đường số 21', N'DS019')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911190735', N'Tô Thái Học', N'Nam', N'12/12/1980', N'0911247122', N'Q10', N'P148', N'312/97 đường số 6', N'DS019')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911191337', N'Hoàng Công Đạt', N'Nam', N'14/9/1953', N'0324116227', N'Q6', N'P202', N'380/56/2 đường số 8', N'DS012')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911195748', N'Hoàng Trọng Tú', N'Nam', N'23/1/1965', N'0382406402', N'Q10', N'P148', N'252/43 đường số 15', N'DS019')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911195969', N'Phan Văn Giáp', N'Nam', N'8/2/1981', N'0927319349', N'Q10', N'P148', N'104/19/20 đường số 27', N'DS019')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911200208', N'Lê Minh Sơn', N'Nam', N'12/1/1986', N'0303136110', N'Q11', N'P160', N'85/68/44 đường số 12', N'DS022')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911200829', N'Mai Thị Bích Ngọc', N'Nu', N'16/12/2009', N'0356962470', N'Q11', N'P160', N'172/53/16 đường số 8', N'DS022')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911201340', N'Nguyễn Thị Ngọc Trinh', N'Nu', N'12/10/1955', N'0317953881', N'Q11', N'P160', N'310/79 đường số 28', N'DS022')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911201355', N'Hà Thị Tú', N'Nu', N'14/3/1991', N'0314158992', N'Q11', N'P160', N'335/32 đường số 22', N'DS022')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911204516', N'Phạm Tố Bảo', N'Nam', N'3/8/1951', N'0381545508', N'Q11', N'P160', N'362/47 đường số 24', N'DS022')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911205797', N'Lưu Thị Thanh Huyền', N'Nu', N'19/2/1956', N'0954964686', N'Q12', N'P014', N'348/85 đường số 16', N'DS023')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911206364', N'Võ Ngọc Xuân Hương', N'Nu', N'11/8/1950', N'0939177102', N'Q12', N'P014', N'247/23/34 đường số 20', N'DS023')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911206492', N'Đỗ Thị Ngọc Mai', N'Nu', N'16/9/1965', N'0979773127', N'Q12', N'P014', N'102/82 đường số 20', N'DS023')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911210011', N'Lê Lý Thiên Long', N'Nam', N'14/1/1968', N'0971694503', N'Q3', N'P142', N'166/42 đường số 15', N'DS005')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911210068', N'Trần Bảo Việt', N'Nam', N'11/11/2008', N'0975652188', N'Q3', N'P142', N'166/18 đường số 6', N'DS005')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911230122', N'Lê Trần Hữu Lợi', N'Nam', N'13/4/2003', N'0931764538', N'QTD', N'P238', N'385/61 đường số 22', N'DS036')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911230287', N'Lê Đường Hoàn Vũ', N'Nam', N'30/4/1956', N'0352787780', N'Q7', N'P226', N'66/76/40 đường số 17', N'DS013')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911230585', N'Dương Vũ', N'Nam', N'18/11/1952', N'0903679108', N'Q7', N'P226', N'24/17 đường số 23', N'DS013')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911230867', N'Võ Thị Thúy Quyên', N'Nu', N'8/8/1953', N'0301441353', N'Q7', N'P226', N'129/86/36 đường số 17', N'DS013')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911231697', N'Lưu Ngọc Quý', N'Nam', N'20/4/2008', N'0328835273', N'Q7', N'P226', N'111/95 đường số 22', N'DS013')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911231714', N'Trần Thị Diễm Thi', N'Nu', N'1/7/1971', N'0961937510', N'Q7', N'P226', N'321/93 đường số 24', N'DS013')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911231741', N'Nguyễn Minh Út', N'Nam', N'21/5/1973', N'0341113407', N'Q7', N'P226', N'370/59/28 đường số 23', N'DS013')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911232776', N'Mai Ngọc Quỳnh Giang', N'Nu', N'23/9/1970', N'0981955405', N'QTD', N'P238', N'355/5 đường số 4', N'DS036')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911235517', N'Trương Chí Đạt', N'Nam', N'10/4/1984', N'0985968210', N'QTD', N'P238', N'390/38/14 đường số 14', N'DS036')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911235705', N'Bùi Thành Phát', N'Nam', N'25/4/1950', N'0303637969', N'QTD', N'P238', N'133/71 đường số 8', N'DS036')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911240042', N'Nguyễn Anh Huy', N'Nam', N'19/9/1955', N'0935386664', N'QTD', N'P238', N'177/66 đường số 2', N'DS036')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911240063', N'Lê Thị Thuý My', N'Nu', N'9/10/1979', N'0376247343', N'Q5', N'P190', N'372/97 đường số 22', N'DS010')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911240393', N'Hồ Đặng Hữu Tài', N'Nam', N'1/3/1960', N'0934147862', N'Q5', N'P193', N'296/68/36 đường số 27', N'DS009')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911240741', N'Trần Thị Thanh Phương', N'Nu', N'19/2/1998', N'0341588880', N'QTD', N'P238', N'138/73 đường số 17', N'DS036')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911241117', N'Nguyễn Thị Oanh Nhi', N'Nu', N'9/11/1983', N'0960140802', N'QTD', N'P238', N'303/73 đường số 29', N'DS036')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911241126', N'Trương Minh Tâm', N'Nam', N'3/9/1992', N'0988358676', N'Q5', N'P193', N'31/51 đường số 27', N'DS009')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911244200', N'TrầN Thị Thanh Mai', N'Nu', N'21/6/1953', N'0990913191', N'QTD', N'P238', N'246/68/8 đường số 8', N'DS036')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911244338', N'Phan Hữu Nam', N'Nam', N'19/7/1982', N'0926610103', N'QTD', N'P238', N'390/47 đường số 4', N'DS036')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911244368', N'Huỳnh Ngọc Như', N'Nu', N'26/5/2005', N'0936981948', N'QTD', N'P238', N'94/87/2 đường số 4', N'DS036')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911244499', N'Huỳnh Huy Đức', N'Nam', N'24/10/1979', N'0911599367', N'QTP', N'P075', N'117/83 đường số 25', N'DS037')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911250059', N'Trần Văn Giáo', N'Nam', N'12/5/1955', N'0942513226', N'QBT', N'P244', N'46/32 đường số 17', N'DS026')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911250425', N'Nguyễn Đặng Phương Nam', N'Nam', N'28/3/1987', N'0964967117', N'QTP', N'P075', N'221/70/8 đường số 15', N'DS037')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911250437', N'Võ Thành Nhân', N'Nam', N'14/1/1956', N'0321930110', N'QTP', N'P075', N'199/24/42 đường số 20', N'DS037')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911250603', N'Võ Văn Dương', N'Nam', N'26/7/1963', N'0930614844', N'QBT', N'P244', N'337/33/48 đường số 19', N'DS026')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911250950', N'Trương Thành Đông', N'Nam', N'11/9/1969', N'0347635857', N'QBT', N'P244', N'158/69 đường số 23', N'DS026')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911251116', N'Nguyễn Văn Thắng', N'Nam', N'27/5/1972', N'0334147756', N'QBT', N'P244', N'358/63/8 đường số 6', N'DS026')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911251746', N'Nguyễn Anh Khoa', N'Nam', N'10/3/1950', N'0956930332', N'QTP', N'P075', N'95/34 đường số 11', N'DS037')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911252550', N'Trần Hà Nam', N'Nam', N'17/11/2003', N'0315835983', N'QTP', N'P075', N'136/89 đường số 28', N'DS037')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911252563', N'Phan Văn Toàn', N'Nam', N'9/8/1969', N'0972769720', N'QBT', N'P244', N'41/24/4 đường số 15', N'DS026')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911252637', N'Tô Minh Hải', N'Nam', N'22/4/1998', N'0960894796', N'QBT', N'P244', N'136/14/26 đường số 6', N'DS026')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911252781', N'Lê Thanh Tùng', N'Nam', N'30/12/1992', N'0981508858', N'QBT', N'P244', N'244/40 đường số 26', N'DS026')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911252844', N'Nguyễn Huy Hoàng', N'Nam', N'1/6/1950', N'0372120857', N'QBT', N'P244', N'355/85 đường số 16', N'DS026')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911252865', N'Trần Khánh Linh', N'Nam', N'18/3/1981', N'0901939828', N'QBT', N'P244', N'150/31 đường số 21', N'DS026')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911255725', N'Nguyễn Trần Trung Kiên', N'Nam', N'23/4/1980', N'0948197636', N'QTP', N'P075', N'383/63 đường số 11', N'DS037')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911255747', N'Phạm Hoàng Long', N'Nam', N'15/5/1961', N'0981848614', N'QTP', N'P075', N'53/84/8 đường số 27', N'DS037')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911256158', N'Phạm Huy Hoàng', N'Nam', N'28/10/1994', N'0941375561', N'QTP', N'P075', N'233/10/44 đường số 12', N'DS037')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911256171', N'Hồ Trọng Sáu', N'Nam', N'8/1/1964', N'0961155325', N'QBT', N'P244', N'252/11 đường số 24', N'DS026')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911270365', N'Trương Thị Ngọc Diễm', N'Nu', N'16/5/1975', N'0992176998', N'Q4', N'P185', N'91/78/28 đường số 10', N'DS007')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911270872', N'Phạm Thị Hương Quỳnh', N'Nu', N'27/1/1972', N'0938670173', N'Q4', N'P185', N'156/22/18 đường số 29', N'DS007')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911271262', N'Nguyễn Dương Ánh Sương', N'Nu', N'26/9/1953', N'0321969447', N'Q4', N'P185', N'315/42/10 đường số 12', N'DS007')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911271353', N'Trần Minh Tuấn', N'Nam', N'29/3/2000', N'0363275905', N'Q7', N'P226', N'151/20 đường số 14', N'DS013')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911271380', N'Nguyễn Trọng Nghĩa', N'Nam', N'9/7/2005', N'0963973685', N'Q4', N'P185', N'303/47/2 đường số 3', N'DS007')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911271422', N'Trần Thụy Tường Vy', N'Nu', N'18/1/2001', N'0350836509', N'Q4', N'P185', N'25/13 đường số 24', N'DS007')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911272320', N'Huỳnh Quốc Nhật', N'Nam', N'26/12/1965', N'0901652702', N'Q4', N'P185', N'181/99/46 đường số 23', N'DS007')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911272372', N'Trương Nguyễn Nguyên Đoan', N'Nu', N'4/11/1975', N'0313467602', N'Q4', N'P185', N'357/93/2 đường số 20', N'DS007')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911272432', N'Vũ Đức Luân ', N'Nam', N'2/10/1990', N'0394565135', N'Q4', N'P185', N'235/88/30 đường số 26', N'DS007')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911272534', N'Nguyễn Thị Huệ', N'Nu', N'4/11/1993', N'0919317917', N'Q4', N'P185', N'32/46/18 đường số 28', N'DS007')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911272623', N'Đỗ Hoài Nam', N'Nam', N'1/1/1986', N'0928161185', N'Q4', N'P185', N'65/35/40 đường số 24', N'DS007')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911272663', N'Đinh Xuân Bảo Phúc', N'Nam', N'22/3/2001', N'0998888344', N'Q4', N'P185', N'125/27 đường số 28', N'DS007')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911272728', N'Phan Thị Hoàng Thy', N'Nu', N'21/8/2003', N'0924349268', N'Q4', N'P185', N'356/18 đường số 4', N'DS007')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911272823', N'Nguyễn Thị Kiều Loan', N'Nu', N'13/4/1980', N'0954485801', N'Q4', N'P185', N'398/87/28 đường số 6', N'DS007')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911272839', N'Nguyễn Hoài Nam', N'Nam', N'1/12/2001', N'0941765649', N'Q4', N'P185', N'83/72 đường số 6', N'DS007')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911276308', N'Nguyễn Lê Nhật Sơn', N'Nam', N'27/12/1987', N'0931155571', N'Q4', N'P185', N'391/21/42 đường số 17', N'DS007')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911704426', N'Nguyễn Hồng Đức', N'Nam', N'7/10/1958', N'0395970907', N'Q2', N'P128', N'120/48 đường số 14', N'DS004')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911761189', N'Bùi Đại Quốc Thiên', N'Nam', N'29/6/1991', N'0926544518', N'Q7', N'P227', N'293/2/10 đường số 7', N'DS014')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911762587', N'Văn Ngọc Hân', N'Nu', N'28/9/1994', N'0310689393', N'Q7', N'P227', N'107/97/48 đường số 29', N'DS014')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911765191', N'Trần Hữu Thiện', N'Nam', N'18/9/1991', N'0900771138', N'Q7', N'P227', N'267/72 đường số 21', N'DS014')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911810136', N'Vũ Văn Hạnh', N'Nam', N'16/5/1996', N'0984244847', N'QTP', N'P076', N'162/92 đường số 23', N'DS038')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911813267', N'Nguyễn Lê Công', N'Nam', N'26/2/1994', N'0936823633', N'QTP', N'P076', N'132/93/28 đường số 26', N'DS038')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911820322', N'Bùi Tá Phông', N'Nam', N'12/4/1959', N'0342152416', N'QBT', N'P244', N'17/34 đường số 29', N'DS026')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911830119', N'Nguyễn Huỳnh Thanh Trúc', N'Nu', N'20/3/1990', N'0953522536', N'QTP', N'P076', N'364/12 đường số 20', N'DS038')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911830150', N'Nguyễn Quốc Dũng', N'Nam', N'28/11/1950', N'0308177700', N'QTP', N'P075', N'131/96 đường số 27', N'DS037')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911850283', N'Nguyễn Chí Khang', N'Nam', N'12/10/1953', N'0979174989', N'QBT', N'P244', N'133/1/24 đường số 23', N'DS026')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911850660', N'Nguyễn Minh Đạt', N'Nam', N'18/1/1955', N'0905936512', N'QBTH', N'P042', N'337/50 đường số 16', N'DS027')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911863151', N'Nguyễn Thị Huyền', N'Nu', N'14/1/1957', N'0385366998', N'Q12', N'P015', N'232/46/16 đường số 9', N'DS024')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'1911863243', N'Phan Huỳnh Mỹ Trân', N'Nu', N'10/2/1982', N'0315439307', N'Q12', N'P015', N'56/16/30 đường số 5', N'DS024')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011040985', N'Nguyễn Khắc Duy', N'Nam', N'21/7/1967', N'0381561931', N'QBTH', N'P042', N'390/78 đường số 12', N'DS027')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011050006', N'Trần Đức Anh', N'Nam', N'17/10/1984', N'0939566338', N'QBTH', N'P042', N'135/23/46 đường số 26', N'DS027')
GO
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011063803', N'Nguyễn Thế Trí', N'Nam', N'26/7/1959', N'0313917142', N'QTB', N'P064', N'265/29 đường số 27', N'DS033')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011068627', N'Vũ Đại Dương', N'Nam', N'29/5/2001', N'0958930575', N'Q1', N'P002', N'16/38 đường số 20', N'DS002')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011120154', N'Nguyễn Thị Hải Yến', N'Nu', N'4/5/2005', N'0391700325', N'Q3', N'P142', N'339/100 đường số 4', N'DS005')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011120578', N'Võ Xuân Nghi', N'Nu', N'16/8/1951', N'0362623693', N'Q3', N'P142', N'223/42 đường số 9', N'DS005')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011130027', N'Lê Hoàng Nam', N'Nam', N'11/8/2007', N'0956130467', N'Q3', N'P142', N'52/32 đường số 1', N'DS005')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011141305', N'Lâm Hồng Nhật Nguyệt', N'Nu', N'16/5/1975', N'0344433784', N'Q7', N'P227', N'154/74 đường số 24', N'DS014')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011142213', N'Nguyễn Thị Quế Trân', N'Nu', N'25/3/1981', N'0909871785', N'Q7', N'P227', N'219/75/42 đường số 21', N'DS014')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011142656', N'Lê Hoàng Anh', N'Nam', N'28/5/1951', N'0933601130', N'QTP', N'P075', N'301/24/40 đường số 10', N'DS037')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011142871', N'Huỳnh Thị Hà', N'Nu', N'27/7/1989', N'0313449346', N'QTP', N'P075', N'388/51 đường số 10', N'DS037')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011143607', N'Nguyễn Mai Minh Thư', N'Nu', N'27/3/1973', N'0945241911', N'Q7', N'P227', N'298/66/36 đường số 29', N'DS014')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011144021', N'Dương Xuân Đức', N'Nam', N'15/9/1982', N'0338610160', N'Q7', N'P227', N'33/75/36 đường số 21', N'DS014')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011146023', N'Nguyễn Hoàng Long Vũ', N'Nam', N'25/5/1985', N'0389885670', N'Q7', N'P227', N'291/84 đường số 24', N'DS014')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011146247', N'Nguyễn Thị Quyên', N'Nu', N'26/6/2002', N'0992426503', N'QTP', N'P075', N'81/84 đường số 12', N'DS037')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011147302', N'Trần Thị Xuân Ngọc', N'Nu', N'7/9/1990', N'0921771645', N'Q7', N'P227', N'303/10/10 đường số 3', N'DS014')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011147367', N'Đặng Công Anh Văn', N'Nam', N'11/9/1997', N'0374575474', N'Q10', N'P148', N'230/98 đường số 14', N'DS019')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011148448', N'Lê Thành Nam', N'Nam', N'12/1/1966', N'0306356790', N'Q7', N'P227', N'301/4/14 đường số 23', N'DS014')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011148480', N'Lê Long Nhật', N'Nam', N'27/11/1986', N'0986512441', N'Q7', N'P227', N'17/98/34 đường số 9', N'DS014')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011148574', N'Nguyễn Chí Thắng', N'Nam', N'15/9/1994', N'0923744750', N'Q8', N'P215', N'261/84/4 đường số 26', N'DS015')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011148703', N'Nguyễn Vũ Vy', N'Nu', N'4/1/1973', N'0321600159', N'Q8', N'P215', N'119/94 đường số 22', N'DS015')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011148716', N'Hoàng Anh', N'Nam', N'19/11/2004', N'0317984514', N'Q8', N'P215', N'259/61/42 đường số 3', N'DS015')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011148870', N'TrầN Thị NgọC Mai', N'Nu', N'11/5/1963', N'0926277203', N'QTP', N'P075', N'21/99/48 đường số 3', N'DS037')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011160183', N'Nguyễn Anh Duy', N'Nam', N'11/5/2002', N'0949778594', N'Q5', N'P190', N'321/22/40 đường số 3', N'DS010')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011166777', N'Nguyễn Thị Yến Ngân', N'Nu', N'10/7/1981', N'0388300904', N'Q6', N'P205', N'14/57 đường số 18', N'DS011')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011166972', N'Nguyễn Nhã Linh', N'Nu', N'27/8/1999', N'0348934769', N'Q6', N'P205', N'384/41 đường số 12', N'DS011')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011182407', N'Phạm Viết Huy', N'Nam', N'5/4/1953', N'0907265345', N'Q10', N'P148', N'398/81 đường số 21', N'DS019')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011182504', N'Nguyễn Thị Bé', N'Nu', N'11/6/1960', N'0365883140', N'Q10', N'P148', N'36/70 đường số 1', N'DS019')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011182612', N'Lê Đình Thiên Trang', N'Nu', N'8/3/2008', N'0918632280', N'Q10', N'P149', N'253/39/4 đường số 22', N'DS020')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011191903', N'Bùi Thị Kim Ngân', N'Nu', N'19/11/1964', N'0316933345', N'Q10', N'P149', N'64/76 đường số 13', N'DS020')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011193351', N'Trương Thị Minh Thư', N'Nu', N'28/12/2009', N'0315445399', N'Q10', N'P149', N'20/1 đường số 3', N'DS020')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011201022', N'Nguyễn Phi Hải', N'Nam', N'14/9/1951', N'0964579859', N'Q12', N'P014', N'47/78 đường số 27', N'DS023')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011201456', N'Nguyễn Quốc Gia Hy', N'Nam', N'6/11/1951', N'0995787933', N'QTB', N'P064', N'167/55/8 đường số 3', N'DS033')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011202159', N'Huỳnh Trịnh Mỹ Ngân', N'Nu', N'2/2/1951', N'0342178740', N'QBTH', N'P042', N'382/29/26 đường số 16', N'DS027')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011202266', N'Nguyễn Thị Phương Linh', N'Nu', N'24/10/1958', N'0965468235', N'QTB', N'P064', N'278/96/10 đường số 6', N'DS033')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011207786', N'Huỳnh Quốc Bảo', N'Nam', N'22/11/1958', N'0374376158', N'QTB', N'P065', N'63/45/8 đường số 12', N'DS034')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011210107', N'Lê Tấn Thành', N'Nam', N'5/3/1999', N'0321490272', N'Q3', N'P142', N'343/62 đường số 13', N'DS005')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011210343', N'Phan Tấn Hoàng', N'Nam', N'17/2/2001', N'0302774926', N'Q3', N'P141', N'88/42 đường số 21', N'DS006')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011210452', N'Trần Lâm Chí Vĩ', N'Nam', N'27/5/1957', N'0913678214', N'Q3', N'P141', N'177/42/2 đường số 21', N'DS006')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011220137', N'Nguyễn Xuân Thành', N'Nam', N'1/6/1981', N'0376345142', N'QTP', N'P076', N'100/1/38 đường số 8', N'DS038')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011220155', N'Phan Huỳnh Thuỳ Trang', N'Nam', N'16/12/1989', N'0962115505', N'QTP', N'P076', N'265/36/28 đường số 17', N'DS038')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011220163', N'Vũ Tiến Dũng', N'Nam', N'28/11/2006', N'0977749435', N'QTP', N'P076', N'299/73/12 đường số 13', N'DS038')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011230144', N'Trần Thị Ngọc Dung', N'Nu', N'13/11/1967', N'0345913100', N'Q8', N'P215', N'219/68/40 đường số 10', N'DS015')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011234866', N'Đậu Thị Hoài Phương', N'Nu', N'27/8/1978', N'0385271190', N'Q8', N'P215', N'342/8 đường số 6', N'DS015')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011234867', N'Ngô Thúy Phương', N'Nu', N'4/12/1988', N'0947379354', N'Q8', N'P215', N'343/33/4 đường số 8', N'DS015')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011235114', N'Phan Kim Ngân', N'Nu', N'25/8/1953', N'0336106998', N'Q8', N'P215', N'86/40 đường số 9', N'DS015')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011239588', N'Lương Văn Tuân', N'Nam', N'16/12/1975', N'0364634530', N'Q8', N'P215', N'253/78 đường số 15', N'DS015')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011240352', N'Khổng Huỳnh Lê Vy', N'Nu', N'10/6/1991', N'0389431563', N'QTP', N'P075', N'349/15 đường số 16', N'DS037')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011240762', N'Nguyễn Thị Bé', N'Nu', N'28/4/1981', N'0381828703', N'Q5', N'P193', N'323/96 đường số 22', N'DS009')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011241019', N'Phan Thị Hoài Trang', N'Nu', N'4/2/1990', N'0946944275', N'QTP', N'P075', N'158/15/10 đường số 1', N'DS037')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011244438', N'Nguyễn Thị Như Ý', N'Nu', N'26/11/1993', N'0365415824', N'Q5', N'P193', N'105/94/30 đường số 10', N'DS009')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011250044', N'Trần Quốc Bảo', N'Nam', N'14/2/1951', N'0996846251', N'QBTH', N'P042', N'391/54 đường số 7', N'DS027')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011251549', N'Văn Đức Nhật', N'Nam', N'30/3/2000', N'0370760570', N'QTP', N'P076', N'139/58/48 đường số 7', N'DS038')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011251652', N'Danh Tuấn', N'Nam', N'29/7/1998', N'0396574640', N'QBTH', N'P042', N'150/37 đường số 7', N'DS027')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011252044', N'Nguyễn Minh Tân', N'Nam', N'18/12/1996', N'0978356157', N'QBTH', N'P042', N'84/83/24 đường số 11', N'DS027')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011252539', N'Cam Hoàng Huy', N'Nam', N'6/4/2000', N'0315471794', N'QBTH', N'P042', N'115/23/24 đường số 13', N'DS027')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011253123', N'Phạm Bá Đạt', N'Nam', N'12/4/1985', N'0978613626', N'QBTH', N'P042', N'33/52 đường số 7', N'DS027')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011260940', N'Nguyễn Thành Nam', N'Nam', N'23/3/1977', N'0967373626', N'Q12', N'P015', N'400/86/42 đường số 22', N'DS024')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011300781', N'Trần Bá Thái Vinh', N'Nam', N'12/10/1983', N'0941236946', N'QBTH', N'P042', N'52/78 đường số 28', N'DS027')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011710172', N'Lê Nhật Mỹ', N'Nam', N'21/9/1960', N'0384889698', N'QTP', N'P076', N'76/66 đường số 22', N'DS038')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011766887', N'Nguyễn Thị Thu', N'Nu', N'5/12/1951', N'0967774189', N'Q8', N'P215', N'279/61/2 đường số 8', N'DS015')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011770902', N'Bùi Phụ Hiếu', N'Nam', N'18/12/1991', N'0919815231', N'Q2', N'P122', N'59/97 đường số 28', N'DS003')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011800065', N'Bùi Thị Kim Ngọc', N'Nu', N'27/2/2009', N'0368687956', N'Q3', N'P141', N'399/77 đường số 24', N'DS006')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011800126', N'Nguyễn Hoàng Anh Thơ', N'Nu', N'7/6/1979', N'0385966170', N'Q2', N'P122', N'268/39/10 đường số 17', N'DS003')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011800666', N'Cửu Tấn Dũ ', N'Nam', N'6/7/1991', N'0345745869', N'Q3', N'P141', N'259/14/2 đường số 6', N'DS006')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011820021', N'Mohamad Arifine Lê Bình', N'Nam', N'23/3/1965', N'0348214422', N'QBTH', N'P042', N'187/77/42 đường số 27', N'DS027')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011820029', N'Phạm Công Danh', N'Nam', N'9/8/1990', N'0357610915', N'QBTH', N'P042', N'330/79/14 đường số 14', N'DS027')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011820180', N'Dịp Hưng Thái', N'Nam', N'7/12/1954', N'0966912387', N'QBTH', N'P042', N'213/63 đường số 18', N'DS027')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011820580', N'Nguyễn Quốc Việt', N'Nam', N'25/6/1953', N'0971392854', N'QBTH', N'P042', N'346/70/44 đường số 29', N'DS027')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011820677', N'Hoàng Ngọc Bảo', N'Nam', N'23/5/1954', N'0959449332', N'QBTH', N'P042', N'82/93 đường số 26', N'DS027')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011820692', N'Huỳnh Minh Triết', N'Nam', N'6/10/1954', N'0975460256', N'QBTH', N'P043', N'37/42/42 đường số 6', N'DS028')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011858000', N'Nguyễn Lê Anh Khoa', N'Nam', N'17/11/1986', N'0966571119', N'QBTH', N'P043', N'379/7 đường số 27', N'DS028')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011858049', N'Phan Huy Vũ', N'Nam', N'1/8/2001', N'0926176958', N'QBTH', N'P043', N'337/79/26 đường số 15', N'DS028')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011860144', N'Trần Nhật Linh', N'Nu', N'9/9/1997', N'0348773509', N'Q12', N'P015', N'194/31 đường số 23', N'DS024')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011860687', N'Phùng Huệ Linh', N'Nu', N'14/12/1960', N'0975180374', N'Q12', N'P015', N'388/100/36 đường số 15', N'DS024')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011874680', N'Nguyễn Hoàng Kim Phước', N'Nu', N'16/1/2005', N'0307927590', N'Q4', N'P177', N'146/73/28 đường số 6', N'DS008')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2011880992', N'Ngô Thị Yến Thanh', N'Nu', N'13/9/2006', N'0935961761', N'QTP', N'P076', N'70/67/10 đường số 24', N'DS038')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2080600047', N'Phạm Minh Tâm', N'Nam', N'13/2/2000', N'0938145195', N'Q2', N'P122', N'68/93 đường số 4', N'DS003')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2080600183', N'Lê Văn Bình', N'Nam', N'5/12/2003', N'0915442414', N'Q2', N'P122', N'251/75/48 đường số 23', N'DS003')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2080600914', N'Nguyễn Hồng Thái', N'Nam', N'25/9/1970', N'0361889864', N'Q2', N'P122', N'392/65/8 đường số 22', N'DS003')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2080601292', N'Vũ Minh Khang', N'Nam', N'9/9/1996', N'0371110947', N'Q2', N'P122', N'332/68/24 đường số 1', N'DS003')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2080900013', N'Nguyễn Kim Hương', N'Nu', N'25/4/1973', N'0907419776', N'Q12', N'P015', N'145/7 đường số 18', N'DS024')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2081400161', N'Lê Ngọc Út', N'Nam', N'27/1/1966', N'0301992589', N'Q8', N'P215', N'256/12/30 đường số 5', N'DS015')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2081400391', N'Tô Thái Hào', N'Nam', N'21/5/2006', N'0996333168', N'QTB', N'P065', N'329/1 đường số 14', N'DS034')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2081400893', N'Ngô Gia Tây', N'Nam', N'17/6/1989', N'0332731109', N'Q8', N'P215', N'377/81 đường số 17', N'DS015')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2081400999', N'Nguyễn Hồng Ngọc ', N'Nu', N'12/11/1967', N'0371710216', N'QTB', N'P065', N'189/52/18 đường số 17', N'DS034')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2081401108', N'Nguyễn Hoàng Tuấn', N'Nam', N'3/5/1998', N'0321917539', N'Q8', N'P216', N'101/26 đường số 17', N'DS016')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2081401535', N'Lê Thị Thúy Nga', N'Nu', N'29/11/2002', N'0973970570', N'Q8', N'P216', N'126/37/10 đường số 1', N'DS016')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2081800542', N'Nguyễn Phương Linh', N'Nu', N'1/8/1950', N'0996153620', N'Q10', N'P149', N'331/95 đường số 25', N'DS020')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2081900209', N'Dương Thị Hồng Nhung', N'Nu', N'30/2/1973', N'0365259711', N'Q10', N'P149', N'82/30/40 đường số 3', N'DS020')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2081900217', N'Võ Thị Ngọc Như', N'Nu', N'3/5/1971', N'0315863721', N'Q10', N'P149', N'137/97 đường số 17', N'DS020')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2081900303', N'Nguyễn Thị Vân Anh', N'Nu', N'30/6/1959', N'0383289351', N'Q10', N'P149', N'306/90/30 đường số 23', N'DS020')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2081900381', N'Phạm Kim Thanh', N'Nu', N'1/8/1984', N'0956839182', N'Q10', N'P149', N'223/68/26 đường số 13', N'DS020')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2081900762', N'Đào Ngọc Tài', N'Nam', N'20/3/1962', N'0359738552', N'Q10', N'P149', N'158/96 đường số 19', N'DS020')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2082000085', N'Trần Xuân Huyền Anh', N'Nu', N'16/11/1994', N'0388939801', N'Q12', N'P014', N'23/81 đường số 18', N'DS023')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2082300365', N'Phạm Vỹ Long', N'Nam', N'15/8/1960', N'0925374562', N'Q8', N'P216', N'329/20 đường số 28', N'DS016')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2082300804', N'Nguyễn Thu Vinh', N'Nu', N'2/1/1990', N'0926290772', N'Q8', N'P216', N'185/49/16 đường số 21', N'DS016')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2082300851', N'Nguyễn Hoàng Khải', N'Nam', N'13/8/1959', N'0355387965', N'Q8', N'P216', N'397/44/22 đường số 29', N'DS016')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2082500499', N'Lê Quang Trường', N'Nam', N'25/4/1988', N'0962580865', N'QBTH', N'P043', N'345/99/22 đường số 23', N'DS028')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2082700282', N'Phạm Đức Huy', N'Nam', N'21/10/1960', N'0377284942', N'Q4', N'P177', N'223/26 đường số 15', N'DS008')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2087600326', N'Vũ Thị Huyền', N'Nu', N'6/8/1956', N'0941519812', N'Q8', N'P216', N'73/3 đường số 10', N'DS016')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2087600371', N'Vũ Thị Ánh Tuyết', N'Nu', N'4/5/1997', N'0302482835', N'Q8', N'P216', N'112/31/22 đường số 13', N'DS016')
GO
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2087600402', N'Hoàng Khánh Toàn', N'Nam', N'6/12/1969', N'0332114358', N'Q8', N'P216', N'118/52/6 đường số 10', N'DS016')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2087600426', N'Trần Đan Khuê', N'Nu', N'1/9/2008', N'0935638366', N'Q8', N'P216', N'56/28/28 đường số 20', N'DS016')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2087600432', N'Trần Vũ Thảo My', N'Nu', N'9/9/1991', N'0333173838', N'Q8', N'P216', N'17/35 đường số 9', N'DS016')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2087600495', N'Nguyễn Hoàng Khương', N'Nam', N'20/2/1975', N'0331124984', N'Q9', N'P233', N'198/10/44 đường số 18', N'DS017')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2087600565', N'Nguyễn Thị Mỹ Kiều', N'Nu', N'30/4/1961', N'0327643200', N'QBTH', N'P043', N'112/49/18 đường số 16', N'DS028')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2088500044', N'Phạm Thị Thúy An', N'Nu', N'29/2/2004', N'0303235292', N'QGV', N'P028', N'342/85 đường số 10', N'DS029')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2088500214', N'Bùi Thị Hoà', N'Nu', N'2/6/1969', N'0302150703', N'QGV', N'P028', N'182/95/48 đường số 14', N'DS029')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2088500220', N'Nguyễn Hoài Liên', N'Nu', N'9/6/2009', N'0347859382', N'QGV', N'P028', N'297/10 đường số 25', N'DS029')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2088500228', N'Lê Thành Nhân', N'Nam', N'3/4/1956', N'0329921489', N'QGV', N'P028', N'177/43 đường số 22', N'DS029')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2088500323', N'Bùi Nguyễn Ngọc Hân', N'Nu', N'16/11/1988', N'0307699227', N'QGV', N'P028', N'111/99 đường số 22', N'DS029')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2088500336', N'Đào Thị Thuỳ Linh', N'Nu', N'30/4/2000', N'0974570364', N'QGV', N'P028', N'267/25/24 đường số 22', N'DS029')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2088500373', N'Nguyễn Lê Trí Đức', N'Nam', N'12/6/1966', N'0398757468', N'QGV', N'P029', N'190/58/24 đường số 24', N'DS030')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2088500396', N'Nguyễn Khánh Chi', N'Nu', N'14/9/1956', N'0926138856', N'QGV', N'P029', N'13/10/28 đường số 25', N'DS030')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2088500413', N'Nguyễn Phạm Anh Thư', N'Nu', N'17/12/1962', N'0924191330', N'QGV', N'P029', N'368/77/8 đường số 3', N'DS030')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2088500465', N'Huỳnh Thị Phương Trâm', N'Nu', N'25/3/1973', N'0340521602', N'QGV', N'P029', N'257/12/36 đường số 14', N'DS030')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2088501575', N'Lê Thị Trúc Ngân', N'Nu', N'29/11/1997', N'0946816321', N'QGV', N'P029', N'49/15 đường số 5', N'DS030')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2088600159', N'Lê Hoàng Thảo', N'Nu', N'15/5/1976', N'0950234691', N'Q9', N'P233', N'273/83/42 đường số 12', N'DS017')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2088701002', N'Lê Minh Vũ', N'Nam', N'3/1/1979', N'0956673729', N'Q4', N'P177', N'30/10/14 đường số 22', N'DS008')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2088701222', N'Trần Hồng Đức', N'Nam', N'16/10/1955', N'0966312187', N'Q4', N'P177', N'273/77 đường số 15', N'DS008')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2088900047', N'Hồ Thanh Tài', N'Nam', N'2/11/1999', N'0358291957', N'Q10', N'P149', N'144/67/20 đường số 27', N'DS020')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2088900053', N'Huỳnh Minh Tiến', N'Nam', N'29/9/1978', N'0331296974', N'Q10', N'P149', N'348/6/18 đường số 19', N'DS020')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2088900563', N'Phạm Thị Thùy Trang', N'Nu', N'20/10/1962', N'0350317253', N'Q10', N'P149', N'126/53/44 đường số 3', N'DS020')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2092580098', N'Đỗ Nguyễn Việt Hoàng', N'Nam', N'12/9/1968', N'0362566569', N'QGV', N'P029', N'334/99/32 đường số 23', N'DS030')
INSERT [dbo].[NguoiDan] ([CMND], [HoTen], [GioiTinh], [NamSinh], [SDT], [MaQuan], [MaPhuong], [DiaChi], [MaSoDS]) VALUES (N'2092580888', N'Đoàn Minh Thông', N'Nam', N'22/3/1951', N'0361687488', N'QGV', N'P029', N'40/31/40 đường số 16', N'DS030')
GO
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT001
', N'Nguyễn Văn Trung
', N'DN001
', N'0934523416
', N'Bệnh viện Tp.HCM
', N'trung416@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT002', N'Lê Thị Tâm
', N'DN001
', N'0934523417
', N'Bệnh viện Tp.HCM
', N'quynh417@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT003
', N'Nguyễn Như Ý
', N'DN001
', N'0934523418
', N'Bệnh viện Tp.HCM
', N'y418@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT004', N'Nguyễn Thúy Quỳnh', N'DN002', N'0934523419', N'Bệnh viện Tp.HCM', N'quynh419@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT005', N'Lê Văn Sáng', N'DN002', N'0934523420', N'Bệnh viện Tp.HCM', N'sang420@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT006', N'Lê Ngọc Thành', N'DN002', N'0934523421', N'Bệnh viện Tp.HCM', N'thanh421@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT007', N'Hồ Thị Linh', N'DN003', N'0934523422', N'Bệnh viện Tp.HCM', N'linh422@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT008', N'Nguyễn Văn Công', N'DN003', N'0934523423', N'Bệnh viện Tp.HCM', N'cong423@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT009', N'Trần Thị Bích', N'DN003', N'0934523424', N'Bệnh viện Tp.HCM', N'bich424@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT010', N'Nguyễn Trọng Hiếu', N'DN004', N'0934523425', N'Bệnh viện Tp.HCM', N'hieu425@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT011', N'Trần Mỹ Châu', N'DN004', N'0934523426', N'Bệnh viện Tp.HCM', N'chau426@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT012', N'Nguyễn Trọng Nhân', N'DN004', N'0934523427', N'Bệnh viện Tp.HCM', N'nhan427@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT013', N'Đào Văn Tâm', N'DN005', N'0934523428', N'Bệnh viện Tp.HCM', N'tam428@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT014', N'Nguyễn Văn Nhất', N'DN005', N'0934523429', N'Bệnh viện Tp.HCM', N'nhat429@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT015', N'Trần Văn Đô', N'DN005', N'0934523430', N'Bệnh viện Tp.HCM', N'do430@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT016', N'Nguyễn Văn Sáng', N'DN006', N'0934523431', N'Bệnh viện Tp.HCM', N'sang431@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT017', N'Nguyễn Tuấn Anh', N'DN006', N'0934523432', N'Bệnh viện Tp.HCM', N'anh432@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT018', N'Lê Tuyết Nhi', N'DN006', N'0934523433', N'Bệnh viện Tp.HCM', N'nhi433@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT019', N'Trần Đình Trọng', N'DN007', N'0934523434', N'Bệnh viện Tp.HCM', N'trong434@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT020', N'Hồ Thị Lam', N'DN007', N'0934523435', N'Bệnh viện Tp.HCM', N'lam435@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT021', N'Đào Bích Ngọc', N'DN007', N'0934523436', N'Bệnh viện Tp.HCM', N'ngoc436@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT022', N'Trần Mỹ Hạnh', N'DN008', N'0934523437', N'Bệnh viện Tp.HCM', N'hanh437@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT023', N'Vũ Thị Linh', N'DN008', N'0934523438', N'Bệnh viện Tp.HCM', N'linh438@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT024', N'Nguyễn Thị Hoa', N'DN008', N'0934523439', N'Bệnh viện Tp.HCM', N'hoa439@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT025', N'Nguyện Thị Huệ', N'DN009', N'0934523440', N'Bệnh viện Tp.HCM', N'hue440@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT026', N'Nguyễn Thị Long', N'DN009', N'0934523441', N'Bệnh viện Tp.HCM', N'long441@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT027', N'Lê Thị Hoa', N'DN009', N'0934523442', N'Bệnh viện Tp.HCM', N'hoa442@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT028', N'Trần Gia Huy', N'DN010', N'0934523443', N'Bệnh viện Tp.HCM', N'huy433@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT029', N'Lê Thị Quỳnh', N'DN010', N'0934523444', N'Bệnh viện Tp.HCM', N'quynh444@gmail.com')
INSERT [dbo].[NhanVienYT] ([MaNhanVienYT], [TenNhanVienYT], [MaDoiNgu], [SDT], [CoQuan], [Email]) VALUES (N'NVYT030', N'Nguyễn Thị Như', N'DN010', N'0934523445', N'Bệnh viện Tp.HCM', N'nhu445@gmail.com')
GO
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0001
', N'COVID19001
', 1, N'1811060158', N'NVYT001
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0002', N'COVID19001
', 1, N'1811061355', N'NVYT001
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0003', N'COVID19001
', 1, N'1811061512', N'NVYT001
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0004', N'COVID19001
', 1, N'1811061542', N'NVYT001
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0005', N'COVID19001
', 1, N'1811061922', N'NVYT001
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0006', N'COVID19001
', 1, N'1811061967', N'NVYT001
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0007', N'COVID19001
', 1, N'1811062221', N'NVYT001
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0008', N'COVID19001
', 1, N'1811062399', N'NVYT001
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0009', N'COVID19001
', 1, N'1811062984', N'NVYT001
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0010', N'COVID19001
', 1, N'1811063108', N'NVYT001
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0011', N'COVID19001
', 1, N'1811063212', N'NVYT001
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0012', N'COVID19002', 1, N'1811063414', N'NVYT001
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0013', N'COVID19002', 1, N'1811063546', N'NVYT001
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0014', N'COVID19002', 1, N'1811063583', N'NVYT001
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0015', N'COVID19002', 1, N'1811160288', N'NVYT001
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0016', N'COVID19002', 1, N'1811202936', N'NVYT001
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0017', N'COVID19002', 1, N'1911061356', N'NVYT001
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0018', N'COVID19002', 1, N'1911061490', N'NVYT001
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0019', N'COVID19002', 1, N'1911061848', N'NVYT001
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0020', N'COVID19002', 1, N'2011068627', N'NVYT001
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0021', N'COVID19003', 1, N'2011770902', N'NVYT002')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0022', N'COVID19003', 1, N'2011800126', N'NVYT002')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0023', N'COVID19003', 1, N'2080600047', N'NVYT002')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0024', N'COVID19003', 1, N'2080600183', N'NVYT002')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0025', N'COVID19003', 1, N'2080600914', N'NVYT002')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0026', N'COVID19003', 1, N'2080601292', N'NVYT002')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0027', N'COVID19003', 1, N'1611700832', N'NVYT002')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0028', N'COVID19003', 1, N'1611702220', N'NVYT002')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0029', N'COVID19003', 1, N'1711700917', N'NVYT002')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0030', N'COVID19003', 1, N'1711701410', N'NVYT002')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0031', N'COVID19003', 1, N'1711701433', N'NVYT002')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0032', N'COVID19003', 1, N'1711701928', N'NVYT002')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0033', N'COVID19003', 1, N'1811700985', N'NVYT002')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0034', N'COVID19004', 1, N'1811701240', N'NVYT003
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0035', N'COVID19004', 1, N'1811701459', N'NVYT003
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0036', N'COVID19004', 1, N'1811701723', N'NVYT003
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0037', N'COVID19004', 1, N'1811702012', N'NVYT003
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0038', N'COVID19004', 1, N'1811702013', N'NVYT003
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0039', N'COVID19004', 1, N'1911704426', N'NVYT003
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0040', N'COVID19004', 1, N'1711120060', N'NVYT003
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0041', N'COVID19005', 1, N'1711120064', N'NVYT003
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0042', N'COVID19005', 1, N'1711120065', N'NVYT003
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0043', N'COVID19005', 1, N'1711720016', N'NVYT003
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0044', N'COVID19005', 1, N'1711720099', N'NVYT003
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0045', N'COVID19005', 1, N'1811720040', N'NVYT003
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0046', N'COVID19005', 1, N'1811720044', N'NVYT003
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0047', N'COVID19005', 1, N'1811720074', N'NVYT003
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0048', N'COVID19005', 1, N'1811720124', N'NVYT003
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0049', N'COVID19005', 1, N'1811720154', N'NVYT003
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0050', N'COVID19005', 1, N'1911120057', N'NVYT003
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0051', N'COVID19005', 1, N'1911120182', N'NVYT003
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0052', N'COVID19005', 1, N'1911120329', N'NVYT003
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0053', N'COVID19005', 1, N'1911210011', N'NVYT003
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0054', N'COVID19005', 1, N'1911210068', N'NVYT003
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0055', N'COVID19005', 1, N'2011120154', N'NVYT003
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0056', N'COVID19005', 1, N'2011120578', N'NVYT003
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0057', N'COVID19005', 1, N'2011130027', N'NVYT003
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0058', N'COVID19005', 1, N'2011210107', N'NVYT003
')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0059', N'COVID19006', 1, N'2011210343', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0060', N'COVID19006', 1, N'2011210452', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0061', N'COVID19006', 1, N'2011800065', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0062', N'COVID19006', 1, N'2011800666', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0063', N'COVID19006', 1, N'1711270221', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0064', N'COVID19006', 1, N'1711270282', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0065', N'COVID19006', 1, N'1711270305', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0066', N'COVID19006', 1, N'1711270954', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0067', N'COVID19006', 1, N'1711271506', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0068', N'COVID19006', 1, N'1811251904', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0069', N'COVID19006', 1, N'1811270144', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0070', N'COVID19006', 1, N'1811270289', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0071', N'COVID19007', 1, N'1811271747', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0072', N'COVID19007', 1, N'1811272679', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0073', N'COVID19007', 1, N'1811273058', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0074', N'COVID19007', 1, N'1811273081', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0075', N'COVID19007', 1, N'1911144165', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0076', N'COVID19007', 1, N'1911156526', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0077', N'COVID19007', 1, N'1911270365', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0078', N'COVID19007', 1, N'1911270872', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0079', N'COVID19007', 1, N'1911271262', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0080', N'COVID19007', 1, N'1911271380', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0081', N'COVID19007', 1, N'1911271422', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0082', N'COVID19007', 1, N'1911272320', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0083', N'COVID19007', 1, N'1911272372', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0084', N'COVID19007', 1, N'1911272432', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0085', N'COVID19007', 1, N'1911272534', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0086', N'COVID19007', 1, N'1911272623', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0087', N'COVID19007', 1, N'1911272663', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0088', N'COVID19007', 1, N'1911272728', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0089', N'COVID19007', 1, N'1911272823', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0090', N'COVID19007', 1, N'1911272839', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0091', N'COVID19007', 1, N'1911276308', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0092', N'COVID19008', 1, N'2011874680', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0093', N'COVID19008', 1, N'2082700282', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0094', N'COVID19008', 1, N'2088701002', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0095', N'COVID19008', 1, N'2088701222', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0096', N'COVID19008', 1, N'1711240426', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0097', N'COVID19008', 1, N'1711240845', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0098', N'COVID19008', 1, N'1711240871', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0099', N'COVID19009', 1, N'1911240393', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0100', N'COVID19009', 1, N'1911241126', N'NVYT005')
GO
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0101', N'COVID19009', 1, N'2011240762', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0102', N'COVID19009', 1, N'2011244438', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0103', N'COVID19009', 1, N'1711290235', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0104', N'COVID19009', 1, N'1811150033', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0105', N'COVID19009', 1, N'1811160217', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0106', N'COVID19009', 1, N'1811161488', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0107', N'COVID19010', 1, N'1811163741', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0108', N'COVID19010', 1, N'1911150386', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0109', N'COVID19010', 1, N'1911160602', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0110', N'COVID19010', 1, N'1911161327', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0111', N'COVID19010', 1, N'1911161843', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0112', N'COVID19010', 1, N'1911162055', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0113', N'COVID19010', 1, N'1911165417', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0114', N'COVID19010', 1, N'1911165473', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0115', N'COVID19010', 1, N'1911170149', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0116', N'COVID19010', 1, N'1911240063', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0117', N'COVID19010', 1, N'2011160183', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0118', N'COVID19011', 1, N'2011166972', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0119', N'COVID19011', 1, N'2011166777', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0120', N'COVID19011', 1, N'1811142772', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0121', N'COVID19011', 1, N'1811144590', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0122', N'COVID19011', 1, N'1811144946', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0123', N'COVID19011', 1, N'1811145020', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0124', N'COVID19011', 1, N'1811163664', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0125', N'COVID19011', 1, N'1811231477', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0126', N'COVID19011', 1, N'1811233166', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0127', N'COVID19011', 1, N'1811760659', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0128', N'COVID19011', 1, N'1811760972', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0129', N'COVID19011', 1, N'1811763520', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0130', N'COVID19011', 1, N'1911061924', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0131', N'COVID19011', 1, N'1911140065', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0132', N'COVID19012', 1, N'1911140172', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0133', N'COVID19012', 1, N'1911140629', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0134', N'COVID19012', 1, N'1911141901', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0135', N'COVID19012', 1, N'1911146331', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0136', N'COVID19012', 1, N'1911146609', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0137', N'COVID19012', 1, N'1911147219', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0138', N'COVID19012', 1, N'1911147650', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0139', N'COVID19012', 1, N'1911147726', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0140', N'COVID19012', 1, N'1911147823', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0141', N'COVID19012', 1, N'1911191337', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0142', N'COVID19013', 1, N'1911230287', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0143', N'COVID19013', 1, N'1911230585', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0144', N'COVID19013', 1, N'1911230867', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0145', N'COVID19013', 1, N'1911231697', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0146', N'COVID19013', 1, N'1911231714', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0147', N'COVID19013', 1, N'1911231741', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0148', N'COVID19013', 1, N'1911271353', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0149', N'COVID19014', 1, N'1911761189', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0150', N'COVID19014', 1, N'1911762587', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0151', N'COVID19014', 1, N'1911765191', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0152', N'COVID19014', 1, N'2011141305', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0153', N'COVID19014', 1, N'2011142213', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0154', N'COVID19014', 1, N'2011143607', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0155', N'COVID19014', 1, N'2011144021', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0156', N'COVID19014', 1, N'2011146023', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0157', N'COVID19014', 1, N'2011147302', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0158', N'COVID19014', 1, N'2011148448', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0159', N'COVID19014', 1, N'2011148480', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0160', N'COVID19015', 1, N'2011148574', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0161', N'COVID19015', 1, N'2011148703', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0162', N'COVID19015', 1, N'2011148716', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0163', N'COVID19015', 1, N'2011230144', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0164', N'COVID19015', 1, N'2011234866', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0165', N'COVID19015', 1, N'2011234867', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0166', N'COVID19015', 1, N'2011235114', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0167', N'COVID19015', 1, N'2011239588', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0168', N'COVID19015', 1, N'2011766887', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0169', N'COVID19015', 1, N'2081400161', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0170', N'COVID19015', 1, N'2081400893', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0171', N'COVID19016', 1, N'2081401108', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0172', N'COVID19016', 1, N'2081401535', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0173', N'COVID19016', 1, N'2082300365', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0174', N'COVID19016', 1, N'2082300804', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0175', N'COVID19016', 1, N'2082300851', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0176', N'COVID19016', 1, N'2087600326', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0177', N'COVID19016', 1, N'2087600371', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0178', N'COVID19016', 1, N'2087600402', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0179', N'COVID19016', 1, N'2087600426', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0180', N'COVID19016', 1, N'2087600432', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0181', N'COVID19017', 1, N'2087600495', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0182', N'COVID19017', 1, N'2088600159', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0183', N'COVID19017', 1, N'1711180524', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0184', N'COVID19017', 1, N'1711180569', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0185', N'COVID19017', 1, N'1711181032', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0186', N'COVID19017', 1, N'1711181124', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0187', N'COVID19017', 1, N'1811180369', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0188', N'COVID19017', 1, N'1811183103', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0189', N'COVID19017', 1, N'1811190010', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0190', N'COVID19017', 1, N'1811190017', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0191', N'COVID19017', 1, N'1811190248', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0192', N'COVID19017', 1, N'1811190291', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0193', N'COVID19018', 1, N'1811190308', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0194', N'COVID19018', 1, N'1811190312', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0195', N'COVID19018', 1, N'1811190490', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0196', N'COVID19018', 1, N'1811190493', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0197', N'COVID19018', 1, N'1811190539', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0198', N'COVID19018', 1, N'1811190654', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0199', N'COVID19018', 1, N'1811190661', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0200', N'COVID19018', 1, N'1811190662', N'NVYT009')
GO
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0201', N'COVID19018', 1, N'1811190810', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0202', N'COVID19018', 1, N'1811190834', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0203', N'COVID19018', 1, N'1811190865', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0204', N'COVID19018', 1, N'1811190867', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0205', N'COVID19018', 1, N'1811193257', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0206', N'COVID19018', 1, N'1811193319', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0207', N'COVID19018', 1, N'1811193378', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0208', N'COVID19019', 1, N'1811194900', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0209', N'COVID19019', 1, N'1911181079', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0210', N'COVID19019', 1, N'1911181124', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0211', N'COVID19019', 1, N'1911181234', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0212', N'COVID19019', 1, N'1911181291', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0213', N'COVID19019', 1, N'1911186514', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0214', N'COVID19019', 1, N'1911190647', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0215', N'COVID19019', 1, N'1911190735', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0216', N'COVID19019', 1, N'1911195748', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0217', N'COVID19019', 1, N'1911195969', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0218', N'COVID19019', 1, N'2011147367', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0219', N'COVID19019', 1, N'2011182407', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0220', N'COVID19019', 1, N'2011182504', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0221', N'COVID19020', 1, N'2011182612', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0222', N'COVID19020', 1, N'2011191903', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0223', N'COVID19020', 1, N'2011193351', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0224', N'COVID19020', 1, N'2081800542', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0225', N'COVID19020', 1, N'2081900209', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0226', N'COVID19020', 1, N'2081900217', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0227', N'COVID19020', 1, N'2081900303', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0228', N'COVID19020', 1, N'2081900381', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0229', N'COVID19020', 1, N'2081900762', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0230', N'COVID19020', 1, N'2088900047', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0231', N'COVID19020', 1, N'2088900053', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0232', N'COVID19020', 1, N'2088900563', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0233', N'COVID19021', 1, N'1811200245', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0234', N'COVID19021', 1, N'1811200448', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0235', N'COVID19021', 1, N'1811200840', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0236', N'COVID19021', 1, N'1811202297', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0237', N'COVID19021', 1, N'1811202955', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0238', N'COVID19021', 1, N'1811203084', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0239', N'COVID19021', 1, N'1911142377', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0240', N'COVID19022', 1, N'1911200208', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0241', N'COVID19022', 1, N'1911200829', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0242', N'COVID19022', 1, N'1911201340', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0243', N'COVID19022', 1, N'1911201355', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0244', N'COVID19022', 1, N'1911204516', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0245', N'COVID19023', 1, N'1911205797', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0246', N'COVID19023', 1, N'1911206364', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0247', N'COVID19023', 1, N'1911206492', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0248', N'COVID19023', 1, N'2011201022', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0249', N'COVID19023', 1, N'2082000085', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0250', N'COVID19023', 1, N'1811300043', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0251', N'COVID19023', 1, N'1711100257', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0252', N'COVID19023', 1, N'1811100115', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0253', N'COVID19023', 1, N'1811110293', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0254', N'COVID19023', 1, N'1811110420', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0255', N'COVID19023', 1, N'1811112660', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0256', N'COVID19024', 1, N'1911090006', N'NVYT012')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0257', N'COVID19024', 1, N'1911110421', N'NVYT012')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0258', N'COVID19024', 1, N'1911110422', N'NVYT012')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0259', N'COVID19024', 1, N'2080900013', N'NVYT012')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0260', N'COVID19024', 1, N'1811290373', N'NVYT012')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0261', N'COVID19024', 1, N'1911863151', N'NVYT012')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0262', N'COVID19024', 1, N'1911863243', N'NVYT012')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0263', N'COVID19024', 1, N'2011260940', N'NVYT012')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0264', N'COVID19024', 1, N'2011860144', N'NVYT012')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0265', N'COVID19024', 1, N'2011860687', N'NVYT012')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0266', N'COVID19024', 1, N'1711251962', N'NVYT012')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0267', N'COVID19024', 1, N'1811010003', N'NVYT012')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0268', N'COVID19025', 1, N'1811051620', N'NVYT013')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0269', N'COVID19025', 1, N'1811250423', N'NVYT013')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0270', N'COVID19025', 1, N'1811251097', N'NVYT013')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0271', N'COVID19025', 1, N'1811251943', N'NVYT013')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0272', N'COVID19025', 1, N'1811252199', N'NVYT013')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0273', N'COVID19025', 1, N'1811252255', N'NVYT013')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0274', N'COVID19025', 1, N'1811252773', N'NVYT013')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0275', N'COVID19025', 1, N'1811252798', N'NVYT013')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0276', N'COVID19026', 1, N'1811252823', N'NVYT013')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0277', N'COVID19026', 1, N'1911250059', N'NVYT013')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0278', N'COVID19026', 1, N'1911250603', N'NVYT013')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0279', N'COVID19026', 1, N'1911250950', N'NVYT013')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0280', N'COVID19026', 1, N'1911251116', N'NVYT013')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0281', N'COVID19026', 1, N'1911252563', N'NVYT013')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0282', N'COVID19026', 1, N'1911252637', N'NVYT013')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0283', N'COVID19026', 1, N'1911252781', N'NVYT013')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0284', N'COVID19026', 1, N'1911252844', N'NVYT013')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0285', N'COVID19026', 1, N'1911252865', N'NVYT013')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0286', N'COVID19026', 1, N'1911256171', N'NVYT013')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0287', N'COVID19026', 1, N'1911820322', N'NVYT013')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0288', N'COVID19026', 1, N'1911850283', N'NVYT013')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0289', N'COVID19027', 1, N'1911850660', N'NVYT014')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0290', N'COVID19027', 1, N'2011040985', N'NVYT014')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0291', N'COVID19027', 1, N'2011050006', N'NVYT014')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0292', N'COVID19027', 1, N'2011202159', N'NVYT014')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0293', N'COVID19027', 1, N'2011250044', N'NVYT014')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0294', N'COVID19027', 1, N'2011251652', N'NVYT014')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0295', N'COVID19027', 1, N'2011252044', N'NVYT014')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0296', N'COVID19027', 1, N'2011252539', N'NVYT014')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0297', N'COVID19027', 1, N'2011253123', N'NVYT014')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0298', N'COVID19027', 1, N'2011300781', N'NVYT014')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0299', N'COVID19027', 1, N'2011820021', N'NVYT014')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0300', N'COVID19027', 1, N'2011820029', N'NVYT014')
GO
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0301', N'COVID19027', 1, N'2011820180', N'NVYT014')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0302', N'COVID19027', 1, N'2011820580', N'NVYT014')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0303', N'COVID19027', 1, N'2011820677', N'NVYT014')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0304', N'COVID19028', 1, N'2011820692', N'NVYT014')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0305', N'COVID19028', 1, N'2011858000', N'NVYT014')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0306', N'COVID19028', 1, N'2011858049', N'NVYT014')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0307', N'COVID19028', 1, N'2082500499', N'NVYT014')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0308', N'COVID19028', 1, N'2087600565', N'NVYT014')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0309', N'COVID19029', 1, N'2088500044', N'NVYT014')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0310', N'COVID19029', 1, N'2088500214', N'NVYT014')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0311', N'COVID19029', 1, N'2088500220', N'NVYT014')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0312', N'COVID19029', 1, N'2088500228', N'NVYT014')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0313', N'COVID19029', 1, N'2088500323', N'NVYT014')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0314', N'COVID19029', 1, N'2088500336', N'NVYT014')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0315', N'COVID19030', 1, N'2088500373', N'NVYT015')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0316', N'COVID19030', 1, N'2088500396', N'NVYT015')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0317', N'COVID19030', 1, N'2088500413', N'NVYT015')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0318', N'COVID19030', 1, N'2088500465', N'NVYT015')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0319', N'COVID19030', 1, N'2088501575', N'NVYT015')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0320', N'COVID19030', 1, N'2092580098', N'NVYT015')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0321', N'COVID19030', 1, N'2092580888', N'NVYT015')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0322', N'COVID19030', 1, N'1711201817', N'NVYT015')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0323', N'COVID19031', 1, N'1811062453', N'NVYT015')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0324', N'COVID19031', 1, N'1811142631', N'NVYT015')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0325', N'COVID19031', 1, N'1811142827', N'NVYT015')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0326', N'COVID19031', 1, N'1811143871', N'NVYT015')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0327', N'COVID19031', 1, N'1811144427', N'NVYT015')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0328', N'COVID19031', 1, N'1811174026', N'NVYT015')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0329', N'COVID19031', 1, N'1811190297', N'NVYT015')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0330', N'COVID19032', 1, N'1811200084', N'NVYT016')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0331', N'COVID19032', 1, N'1811200630', N'NVYT016')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0332', N'COVID19032', 1, N'1811201129', N'NVYT016')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0333', N'COVID19032', 1, N'1811201179', N'NVYT016')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0334', N'COVID19032', 1, N'1811201772', N'NVYT016')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0335', N'COVID19032', 1, N'1811250840', N'NVYT016')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0336', N'COVID19032', 1, N'1811700485', N'NVYT016')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0337', N'COVID19033', 1, N'1811700761', N'NVYT016')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0338', N'COVID19033', 1, N'1811700861', N'NVYT016')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0339', N'COVID19033', 1, N'1811700982', N'NVYT016')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0340', N'COVID19033', 1, N'1811701116', N'NVYT016')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0341', N'COVID19033', 1, N'1811701980', N'NVYT016')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0342', N'COVID19033', 1, N'1811760101', N'NVYT016')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0343', N'COVID19033', 1, N'2011063803', N'NVYT016')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0344', N'COVID19033', 1, N'2011201456', N'NVYT016')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0345', N'COVID19033', 1, N'2011202266', N'NVYT016')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0346', N'COVID19034', 1, N'2011207786', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0347', N'COVID19034', 1, N'2081400391', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0348', N'COVID19034', 1, N'2081400999', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0349', N'COVID19034', 1, N'1711140520', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0350', N'COVID19034', 1, N'1711230473', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0351', N'COVID19034', 1, N'1711240524', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0352', N'COVID19034', 1, N'1711240758', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0353', N'COVID19034', 1, N'1711270410', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0354', N'COVID19034', 1, N'1711270726', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0355', N'COVID19034', 1, N'1711270975', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0356', N'COVID19034', 1, N'1711270989', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0357', N'COVID19034', 1, N'1711271227', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0358', N'COVID19034', 1, N'1711271298', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0359', N'COVID19035', 1, N'1711271406', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0360', N'COVID19035', 1, N'1811032817', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0361', N'COVID19035', 1, N'1811153358', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0362', N'COVID19035', 1, N'1811180019', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0363', N'COVID19035', 1, N'1811180420', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0364', N'COVID19035', 1, N'1811180612', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0365', N'COVID19035', 1, N'1811181261', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0366', N'COVID19035', 1, N'1811183072', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0367', N'COVID19035', 1, N'1811190334', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0368', N'COVID19035', 1, N'1811190820', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0369', N'COVID19035', 1, N'1811240114', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0370', N'COVID19035', 1, N'1811250664', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0371', N'COVID19035', 1, N'1811250908', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0372', N'COVID19035', 1, N'1811251937', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0373', N'COVID19035', 1, N'1911067380', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0374', N'COVID19035', 1, N'1911140365', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0375', N'COVID19035', 1, N'1911142597', N'NVYT017')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0376', N'COVID19036', 1, N'1911142834', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0377', N'COVID19036', 1, N'1911143588', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0378', N'COVID19036', 1, N'1911144172', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0379', N'COVID19036', 1, N'1911145082', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0380', N'COVID19036', 1, N'1911147635', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0381', N'COVID19036', 1, N'1911148006', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0382', N'COVID19036', 1, N'1911230122', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0383', N'COVID19036', 1, N'1911232776', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0384', N'COVID19036', 1, N'1911235517', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0385', N'COVID19036', 1, N'1911235705', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0386', N'COVID19036', 1, N'1911240042', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0387', N'COVID19036', 1, N'1911240741', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0388', N'COVID19036', 1, N'1911241117', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0389', N'COVID19036', 1, N'1911244200', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0390', N'COVID19036', 1, N'1911244338', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0391', N'COVID19036', 1, N'1911244368', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0392', N'COVID19037', 1, N'1911244499', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0393', N'COVID19037', 1, N'1911250425', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0394', N'COVID19037', 1, N'1911250437', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0395', N'COVID19037', 1, N'1911251746', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0396', N'COVID19037', 1, N'1911252550', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0397', N'COVID19037', 1, N'1911255725', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0398', N'COVID19037', 1, N'1911255747', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0399', N'COVID19037', 1, N'1911256158', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0400', N'COVID19037', 1, N'1911830150', N'NVYT018')
GO
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0401', N'COVID19037', 1, N'2011142656', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0402', N'COVID19037', 1, N'2011142871', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0403', N'COVID19037', 1, N'2011146247', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0404', N'COVID19037', 1, N'2011148870', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0405', N'COVID19037', 1, N'2011240352', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0406', N'COVID19037', 1, N'2011241019', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0407', N'COVID19038', 1, N'2011251549', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0408', N'COVID19038', 1, N'2011880992', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0409', N'COVID19038', 1, N'1911830119', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0410', N'COVID19038', 1, N'1811070052', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0411', N'COVID19038', 1, N'1811070215', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0412', N'COVID19038', 1, N'1811070256', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0413', N'COVID19038', 1, N'1811070413', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0414', N'COVID19038', 1, N'1811070473', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0415', N'COVID19038', 1, N'1811070487', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0416', N'COVID19038', 1, N'1811270063', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0417', N'COVID19038', 1, N'1811270684', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0418', N'COVID19038', 1, N'1811710043', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0419', N'COVID19038', 1, N'1911810136', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0420', N'COVID19038', 1, N'1911813267', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0421', N'COVID19038', 1, N'2011220137', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0422', N'COVID19038', 1, N'2011220155', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0423', N'COVID19038', 1, N'2011220163', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0424', N'COVID19038', 1, N'2011710172', N'NVYT018')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0425', N'COVID19039', 2, N'1811271747', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0426', N'COVID19039', 2, N'1811272679', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0427', N'COVID19039', 2, N'1811273058', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0428', N'COVID19039', 2, N'1811273081', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0429', N'COVID19039', 2, N'1911144165', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0430', N'COVID19039', 2, N'1911156526', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0431', N'COVID19039', 2, N'1911270365', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0432', N'COVID19039', 2, N'1911270872', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0433', N'COVID19039', 2, N'1911271262', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0434', N'COVID19039', 2, N'1911271380', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0435', N'COVID19039', 2, N'1911271422', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0436', N'COVID19039', 2, N'1911272320', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0437', N'COVID19039', 2, N'1911272372', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0438', N'COVID19039', 2, N'1911272432', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0439', N'COVID19039', 2, N'1911272534', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0440', N'COVID19039', 2, N'1911272623', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0441', N'COVID19039', 2, N'1911272663', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0442', N'COVID19039', 2, N'1911272728', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0443', N'COVID19039', 2, N'1911272823', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0444', N'COVID19039', 2, N'1911272839', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0445', N'COVID19039', 2, N'1911276308', N'NVYT004')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0446', N'COVID19040', 2, N'2011874680', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0447', N'COVID19040', 2, N'2082700282', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0448', N'COVID19040', 2, N'2088701002', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0449', N'COVID19040', 2, N'2088701222', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0450', N'COVID19040', 2, N'1711240426', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0451', N'COVID19040', 2, N'1711240845', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0452', N'COVID19040', 2, N'1711240871', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0453', N'COVID19041', 2, N'1911240393', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0454', N'COVID19041', 2, N'1911241126', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0455', N'COVID19041', 2, N'2011240762', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0456', N'COVID19041', 2, N'2011244438', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0457', N'COVID19041', 2, N'1711290235', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0458', N'COVID19041', 2, N'1811150033', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0459', N'COVID19041', 2, N'1811160217', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0460', N'COVID19041', 2, N'1811161488', N'NVYT005')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0461', N'COVID19042', 2, N'1811163741', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0462', N'COVID19042', 2, N'1911150386', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0463', N'COVID19042', 2, N'1911160602', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0464', N'COVID19042', 2, N'1911161327', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0465', N'COVID19042', 2, N'1911161843', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0466', N'COVID19042', 2, N'1911162055', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0467', N'COVID19042', 2, N'1911165417', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0468', N'COVID19042', 2, N'1911165473', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0469', N'COVID19042', 2, N'1911170149', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0470', N'COVID19042', 2, N'1911240063', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0471', N'COVID19042', 2, N'2011160183', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0472', N'COVID19043', 2, N'2011166972', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0473', N'COVID19043', 2, N'2011166777', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0474', N'COVID19043', 2, N'1811142772', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0475', N'COVID19043', 2, N'1811144590', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0476', N'COVID19043', 2, N'1811144946', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0477', N'COVID19043', 2, N'1811145020', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0478', N'COVID19043', 2, N'1811163664', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0479', N'COVID19043', 2, N'1811231477', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0480', N'COVID19043', 2, N'1811233166', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0481', N'COVID19043', 2, N'1811760659', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0482', N'COVID19043', 2, N'1811760972', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0483', N'COVID19043', 2, N'1811763520', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0484', N'COVID19043', 2, N'1911061924', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0485', N'COVID19043', 2, N'1911140065', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0486', N'COVID19044', 2, N'1911140172', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0487', N'COVID19044', 2, N'1911140629', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0488', N'COVID19044', 2, N'1911141901', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0489', N'COVID19044', 2, N'1911146331', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0490', N'COVID19044', 2, N'1911146609', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0491', N'COVID19044', 2, N'1911147219', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0492', N'COVID19044', 2, N'1911147650', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0493', N'COVID19044', 2, N'1911147726', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0494', N'COVID19044', 2, N'1911147823', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0495', N'COVID19044', 2, N'1911191337', N'NVYT006')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0496', N'COVID19045', 2, N'1911230287', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0497', N'COVID19045', 2, N'1911230585', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0498', N'COVID19045', 2, N'1911230867', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0499', N'COVID19045', 2, N'1911231697', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0500', N'COVID19045', 2, N'1911231714', N'NVYT007')
GO
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0501', N'COVID19045', 2, N'1911231741', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0502', N'COVID19045', 2, N'1911271353', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0503', N'COVID19046', 2, N'1911761189', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0504', N'COVID19046', 2, N'1911762587', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0505', N'COVID19046', 2, N'1911765191', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0506', N'COVID19046', 2, N'2011141305', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0507', N'COVID19046', 2, N'2011142213', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0508', N'COVID19046', 2, N'2011143607', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0509', N'COVID19046', 2, N'2011144021', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0510', N'COVID19046', 2, N'2011146023', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0511', N'COVID19046', 2, N'2011147302', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0512', N'COVID19046', 2, N'2011148448', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0513', N'COVID19046', 2, N'2011148480', N'NVYT007')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0514', N'COVID19047', 2, N'2011148574', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0515', N'COVID19047', 2, N'2011148703', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0516', N'COVID19047', 2, N'2011148716', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0517', N'COVID19047', 2, N'2011230144', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0518', N'COVID19047', 2, N'2011234866', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0519', N'COVID19047', 2, N'2011234867', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0520', N'COVID19047', 2, N'2011235114', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0521', N'COVID19047', 2, N'2011239588', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0522', N'COVID19047', 2, N'2011766887', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0523', N'COVID19047', 2, N'2081400161', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0524', N'COVID19047', 2, N'2081400893', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0525', N'COVID19048', 2, N'2081401108', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0526', N'COVID19048', 2, N'2081401535', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0527', N'COVID19048', 2, N'2082300365', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0528', N'COVID19048', 2, N'2082300804', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0529', N'COVID19048', 2, N'2082300851', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0530', N'COVID19048', 2, N'2087600326', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0531', N'COVID19048', 2, N'2087600371', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0532', N'COVID19048', 2, N'2087600402', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0533', N'COVID19048', 2, N'2087600426', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0534', N'COVID19048', 2, N'2087600432', N'NVYT008')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0535', N'COVID19049', 2, N'2087600495', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0536', N'COVID19049', 2, N'2088600159', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0537', N'COVID19049', 2, N'1711180524', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0538', N'COVID19049', 2, N'1711180569', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0539', N'COVID19049', 2, N'1711181032', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0540', N'COVID19049', 2, N'1711181124', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0541', N'COVID19049', 2, N'1811180369', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0542', N'COVID19049', 2, N'1811183103', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0543', N'COVID19049', 2, N'1811190010', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0544', N'COVID19049', 2, N'1811190017', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0545', N'COVID19049', 2, N'1811190248', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0546', N'COVID19049', 2, N'1811190291', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0547', N'COVID19050', 2, N'1811190308', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0548', N'COVID19050', 2, N'1811190312', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0549', N'COVID19050', 2, N'1811190490', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0550', N'COVID19050', 2, N'1811190493', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0551', N'COVID19050', 2, N'1811190539', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0552', N'COVID19050', 2, N'1811190654', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0553', N'COVID19050', 2, N'1811190661', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0554', N'COVID19050', 2, N'1811190662', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0555', N'COVID19050', 2, N'1811190810', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0556', N'COVID19050', 2, N'1811190834', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0557', N'COVID19050', 2, N'1811190865', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0558', N'COVID19050', 2, N'1811190867', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0559', N'COVID19050', 2, N'1811193257', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0560', N'COVID19050', 2, N'1811193319', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0561', N'COVID19050', 2, N'1811193378', N'NVYT009')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0562', N'COVID19051', 2, N'1811194900', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0563', N'COVID19051', 2, N'1911181079', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0564', N'COVID19051', 2, N'1911181124', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0565', N'COVID19051', 2, N'1911181234', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0566', N'COVID19051', 2, N'1911181291', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0567', N'COVID19051', 2, N'1911186514', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0568', N'COVID19051', 2, N'1911190647', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0569', N'COVID19051', 2, N'1911190735', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0570', N'COVID19051', 2, N'1911195748', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0571', N'COVID19051', 2, N'1911195969', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0572', N'COVID19051', 2, N'2011147367', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0573', N'COVID19051', 2, N'2011182407', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0574', N'COVID19051', 2, N'2011182504', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0575', N'COVID19052', 2, N'2011182612', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0576', N'COVID19052', 2, N'2011191903', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0577', N'COVID19052', 2, N'2011193351', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0578', N'COVID19052', 2, N'2081800542', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0579', N'COVID19052', 2, N'2081900209', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0580', N'COVID19052', 2, N'2081900217', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0581', N'COVID19052', 2, N'2081900303', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0582', N'COVID19052', 2, N'2081900381', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0583', N'COVID19052', 2, N'2081900762', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0584', N'COVID19052', 2, N'2088900047', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0585', N'COVID19052', 2, N'2088900053', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0586', N'COVID19052', 2, N'2088900563', N'NVYT010')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0587', N'COVID19053', 2, N'1811200245', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0588', N'COVID19053', 2, N'1811200448', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0589', N'COVID19053', 2, N'1811200840', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0590', N'COVID19053', 2, N'1811202297', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0591', N'COVID19053', 2, N'1811202955', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0592', N'COVID19053', 2, N'1811203084', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0593', N'COVID19053', 2, N'1911142377', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0594', N'COVID19054', 2, N'1911200208', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0595', N'COVID19054', 2, N'1911200829', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0596', N'COVID19054', 2, N'1911201340', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0597', N'COVID19054', 2, N'1911201355', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0598', N'COVID19054', 2, N'1911204516', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0599', N'COVID19055', 2, N'1911205797', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0600', N'COVID19055', 2, N'1911206364', N'NVYT011')
GO
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0601', N'COVID19055', 2, N'1911206492', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0602', N'COVID19055', 2, N'2011201022', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0603', N'COVID19055', 2, N'2082000085', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0604', N'COVID19055', 2, N'1811300043', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0605', N'COVID19055', 2, N'1711100257', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0606', N'COVID19055', 2, N'1811100115', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0607', N'COVID19055', 2, N'1811110293', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0608', N'COVID19055', 2, N'1811110420', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0609', N'COVID19055', 2, N'1811112660', N'NVYT011')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0610', N'COVID19056', 2, N'1911090006', N'NVYT012')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0611', N'COVID19056', 2, N'1911110421', N'NVYT012')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0612', N'COVID19056', 2, N'1911110422', N'NVYT012')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0613', N'COVID19056', 2, N'2080900013', N'NVYT012')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0614', N'COVID19056', 2, N'1811290373', N'NVYT012')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0615', N'COVID19056', 2, N'1911863151', N'NVYT012')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0616', N'COVID19056', 2, N'1911863243', N'NVYT012')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0617', N'COVID19056', 2, N'2011260940', N'NVYT012')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0618', N'COVID19056', 2, N'2011860144', N'NVYT012')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0619', N'COVID19056', 2, N'2011860687', N'NVYT012')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0620', N'COVID19056', 2, N'1711251962', N'NVYT012')
INSERT [dbo].[PhieuChungNhan] ([MaSoPhieu], [MaDotTiem], [LanTiem], [CMND], [MaNhanVienYT]) VALUES (N'PCN0621', N'COVID19056', 2, N'1811010003', N'NVYT012')
GO
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P001
', N'Phường Tân Định
', N'Q1')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P001', N'Phường Tân Định', N'Q1')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P002', N'Phường Đa Kao', N'Q1')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P003', N'Phường Bến Nghé', N'Q1')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P004', N'Phường Bến Thành', N'Q1')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P005', N'Phường Nguyễn Thái Bình', N'Q1')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P006', N'Phường Phạm Ngũ Lão', N'Q1')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P007', N'Phường Cầu Ông Lãnh', N'Q1')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P008', N'Phường Cô Giang', N'Q1')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P009', N'Phường Nguyễn Cư Trinh', N'Q1')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P010', N'Phường Cầu Kho', N'Q1')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P011', N'Phường Thạnh Xuân', N'Q12')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P012', N'Phường Thạnh Lộc', N'Q12')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P013', N'Phường Hiệp Thành', N'Q12')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P014', N'Phường Thới An', N'Q12')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P015', N'Phường Tân Chánh Hiệp', N'Q12')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P016', N'Phường An Phú Đông', N'Q12')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P017', N'Phường Tân Thới Hiệp', N'Q12')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P018', N'Phường Trung Mỹ Tây', N'Q12')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P019', N'Phường Tân Hưng Thuận', N'Q12')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P020', N'Phường Đông Hưng Thuận', N'Q12')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P021', N'Phường Tân Thới Nhất', N'Q12')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P022', N'Phường 15', N'QGV')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P023', N'Phường 13', N'QGV')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P024', N'Phường 17', N'QGV')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P025', N'Phường 6', N'QGV')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P026', N'Phường 16', N'QGV')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P027', N'Phường 12', N'QGV')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P028', N'Phường 14', N'QGV')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P029', N'Phường 10', N'QGV')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P030', N'Phường 05', N'QGV')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P031', N'Phường 07', N'QGV')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P032', N'Phường 04', N'QGV')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P033', N'Phường 01', N'QGV')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P034', N'Phường 9', N'QGV')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P035', N'Phường 8', N'QGV')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P036', N'Phường 11', N'QGV')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P037', N'Phường 03', N'QGV')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P038', N'Phường 13', N'QBTH')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P039', N'Phường 11', N'QBTH')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P040', N'Phường 27', N'QBTH')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P041', N'Phường 26', N'QBTH')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P042', N'Phường 12', N'QBTH')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P043', N'Phường 25', N'QBTH')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P044', N'Phường 05', N'QBTH')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P045', N'Phường 07', N'QBTH')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P046', N'Phường 24', N'QBTH')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P047', N'Phường 06', N'QBTH')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P048', N'Phường 14', N'QBTH')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P049', N'Phường 15', N'QBTH')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P050', N'Phường 02', N'QBTH')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P051', N'Phường 01', N'QBTH')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P052', N'Phường 03', N'QBTH')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P053', N'Phường 17', N'QBTH')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P054', N'Phường 21', N'QBTH')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P055', N'Phường 22', N'QBTH')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P056', N'Phường 19', N'QBTH')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P057', N'Phường 28', N'QBTH')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P058', N'Phường 02', N'QTB')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P059', N'Phường 04', N'QTB')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P060', N'Phường 12', N'QTB')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P061', N'Phường 13', N'QTB')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P062', N'Phường 01', N'QTB')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P063', N'Phường 03', N'QTB')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P064', N'Phường 11', N'QTB')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P065', N'Phường 07', N'QTB')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P066', N'Phường 05', N'QTB')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P067', N'Phường 10', N'QTB')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P068', N'Phường 06', N'QTB')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P069', N'Phường 08', N'QTB')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P070', N'Phường 09', N'QTB')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P071', N'Phường 14', N'QTB')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P072', N'Phường 15', N'QTB')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P073', N'Phường Tân Sơn Nhì', N'QTP')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P074', N'Phường Tây Thạnh', N'QTP')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P075', N'Phường Sơn Kỳ', N'QTP')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P076', N'Phường Tân Quý', N'QTP')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P077', N'Phường Tân Thành', N'QTP')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P078', N'Phường Phú Thọ Hòa', N'QTP')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P079', N'Phường Phú Thạnh', N'QTP')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P080', N'Phường Phú Trung', N'QTP')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P081', N'Phường Hòa Thạnh', N'QTP')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P082', N'Phường Hiệp Tân', N'QTP')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P083', N'Phường Tân Thới Hòa', N'QTP')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P084', N'Phường 04', N'QPN')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P085', N'Phường 05', N'QPN')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P086', N'Phường 09', N'QPN')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P087', N'Phường 07', N'QPN')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P088', N'Phường 03', N'QPN')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P089', N'Phường 01', N'QPN')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P090', N'Phường 02', N'QPN')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P091', N'Phường 08', N'QPN')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P092', N'Phường 15', N'QPN')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P093', N'Phường 10', N'QPN')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P094', N'Phường 11', N'QPN')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P095', N'Phường 17', N'QPN')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P096', N'Phường 13', N'QPN')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P122', N'Phường Thảo Điền', N'Q2')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P123', N'Phường An Phú', N'Q2')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P124', N'Phường An Khánh', N'Q2')
GO
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P125', N'Phường Bình Trưng Đông', N'Q2')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P126', N'Phường Bình Trưng Tây', N'Q2')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P127', N'Phường Cát Lái', N'Q2')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P128', N'Phường Thạnh Mỹ Lợi', N'Q2')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P129', N'Phường An Lợi Đông', N'Q2')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P130', N'Phường Thủ Thiêm', N'Q2')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P131', N'Phường 14', N'Q3')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P132', N'Phường 12', N'Q3')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P133', N'Phường 11', N'Q3')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P134', N'Phường 13', N'Q3')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P135', N'Phường Võ Thị Sáu', N'Q3')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P136', N'Phường 09', N'Q3')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P137', N'Phường 10', N'Q3')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P138', N'Phường 04', N'Q3')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P139', N'Phường 05', N'Q3')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P140', N'Phường 03', N'Q3')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P141', N'Phường 02', N'Q3')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P142', N'Phường 01', N'Q3')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P143', N'Phường 15', N'Q10')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P144', N'Phường 13', N'Q10')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P145', N'Phường 14', N'Q10')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P146', N'Phường 12', N'Q10')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P147', N'Phường 11', N'Q10')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P148', N'Phường 10', N'Q10')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P149', N'Phường 09', N'Q10')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P150', N'Phường 01', N'Q10')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P151', N'Phường 08', N'Q10')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P152', N'Phường 02', N'Q10')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P153', N'Phường 04', N'Q10')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P154', N'Phường 07', N'Q10')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P155', N'Phường 05', N'Q10')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P156', N'Phường 06', N'Q10')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P157', N'Phường 15', N'Q11')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P158', N'Phường 05', N'Q11')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P159', N'Phường 14', N'Q11')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P160', N'Phường 11', N'Q11')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P161', N'Phường 03', N'Q11')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P162', N'Phường 10', N'Q11')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P163', N'Phường 13', N'Q11')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P164', N'Phường 08', N'Q11')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P165', N'Phường 09', N'Q11')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P166', N'Phường 12', N'Q11')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P167', N'Phường 07', N'Q11')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P168', N'Phường 06', N'Q11')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P169', N'Phường 04', N'Q11')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P170', N'Phường 01', N'Q11')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P171', N'Phường 02', N'Q11')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P172', N'Phường 16', N'Q11')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P173', N'Phường 13', N'Q4')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P174', N'Phường 09', N'Q4')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P175', N'Phường 06', N'Q4')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P176', N'Phường 08', N'Q4')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P177', N'Phường 10', N'Q4')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P178', N'Phường 18', N'Q4')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P179', N'Phường 14', N'Q4')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P180', N'Phường 04', N'Q4')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P181', N'Phường 03', N'Q4')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P182', N'Phường 16', N'Q4')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P183', N'Phường 02', N'Q4')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P184', N'Phường 15', N'Q4')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P185', N'Phường 01', N'Q4')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P186', N'Phường 04', N'Q5')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P187', N'Phường 09', N'Q5')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P188', N'Phường 03', N'Q5')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P189', N'Phường 12', N'Q5')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P190', N'Phường 02', N'Q5')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P191', N'Phường 08', N'Q5')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P192', N'Phường 07', N'Q5')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P193', N'Phường 01', N'Q5')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P194', N'Phường 11', N'Q5')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P195', N'Phường 14', N'Q5')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P196', N'Phường 05', N'Q5')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P197', N'Phường 06', N'Q5')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P198', N'Phường 10', N'Q5')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P199', N'Phường 13', N'Q5')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P200', N'Phường 14', N'Q6')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P201', N'Phường 13', N'Q6')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P202', N'Phường 09', N'Q6')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P203', N'Phường 06', N'Q6')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P204', N'Phường 12', N'Q6')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P205', N'Phường 05', N'Q6')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P206', N'Phường 11', N'Q6')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P207', N'Phường 02', N'Q6')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P208', N'Phường 01', N'Q6')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P209', N'Phường 04', N'Q6')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P210', N'Phường 08', N'Q6')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P211', N'Phường 03', N'Q6')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P212', N'Phường 07', N'Q6')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P213', N'Phường 10', N'Q6')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P214', N'Phường 08', N'Q8')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P215', N'Phường 02', N'Q8')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P216', N'Phường 01', N'Q8')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P217', N'Phường 03', N'Q8')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P218', N'Phường 11', N'Q8')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P219', N'Phường 09', N'Q8')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P220', N'Phường 10', N'Q8')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P221', N'Phường 04', N'Q8')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P222', N'Phường 13', N'Q8')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P223', N'Phường 12', N'Q8')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P224', N'Phường 05', N'Q8')
GO
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P225
', N'Phường Bình Thuận
', N'Q7')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P225', N'Phường 14', N'Q8')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P226
', N'Phường Phú Mỹ
', N'Q7')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P226', N'Phường 06', N'Q8')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P227
', N'Phường Phú Thuận
', N'Q7')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P227', N'Phường 15', N'Q8')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P228
', N'Phường Tân Thuận Đông
', N'Q7')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P228', N'Phường 16', N'Q8')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P229
', N'Phường Tân Thuận Tây
', N'Q7')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P229', N'Phường 07', N'Q8')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P230
', N'Phường Tân Quy
', N'Q7')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P230', N'Phường Bình Hưng Hòa', N'QBT')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P231
', N'Phường Hiệp Phú
', N'Q9')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P231', N'Phường Bình Hưng Hoà A', N'QBT')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P232
', N'Phường Long Bình
', N'Q9')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P232', N'Phường Bình Hưng Hoà B', N'QBT')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P233
', N'Phường Long Phước
', N'Q9')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P233', N'Phường Bình Trị Đông', N'QBT')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P234
', N'Phường Long Thạnh Mỹ
', N'Q9')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P234', N'Phường Bình Trị Đông A', N'QBT')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P235
', N'Phường Phước Bình
', N'Q9')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P235', N'Phường Bình Trị Đông B', N'QBT')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P236
', N'Phường Phú Hữu
', N'Q9')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P236', N'Phường Tân Tạo', N'QBT')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P237
', N'Phường Linh Chiểu
', N'QTD')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P237', N'Phường Tân Tạo A', N'QBT')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P238
', N'Phường Linh Xuân
', N'QTD')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P238', N'Phường An Lạc', N'QBT')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P239
', N'Phường Hiệp Bình Chánh
', N'QTD')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P239', N'Phường An Lạc A', N'QBT')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P240
', N'Phường Hiệp Bình Phước
', N'QTD')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P240', N'Phường Tân Thuận Đông', N'Q7')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P241
', N'Phường Tam Bình 
', N'QTD')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P241', N'Phường Tân Thuận Tây', N'Q7')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P242
', N'Phường Linh Trung
', N'QTD')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P242', N'Phường Tân Kiểng', N'Q7')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P243
', N'Phường Bình Ưng Hòa
', N'QBT')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P243', N'Phường Tân Hưng', N'Q7')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P244
', N'Phường Bình Trị Đông
', N'QBT')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P244', N'Phường Bình Thuận', N'Q7')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P245
', N'Phường An Lạc
', N'QBT')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P245', N'Phường Tân Quy', N'Q7')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P246
', N'Phường Tân Tạo
', N'QBT')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P246', N'Phường Phú Thuận', N'Q7')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P247', N'Phường Tân Phú', N'Q7')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P248', N'Phường Tân Phong', N'Q7')
INSERT [dbo].[Phuong] ([MaPhuong], [TenPhuong], [MaQuan]) VALUES (N'P249', N'Phường Phú Mỹ', N'Q7')
GO
INSERT [dbo].[Quan] ([MaQuan], [TenQuan]) VALUES (N'Q1', N'Quận 1')
INSERT [dbo].[Quan] ([MaQuan], [TenQuan]) VALUES (N'Q10', N'Quận 10')
INSERT [dbo].[Quan] ([MaQuan], [TenQuan]) VALUES (N'Q11', N'Quận 11')
INSERT [dbo].[Quan] ([MaQuan], [TenQuan]) VALUES (N'Q12', N'Quận 12')
INSERT [dbo].[Quan] ([MaQuan], [TenQuan]) VALUES (N'Q2', N'Quận 2')
INSERT [dbo].[Quan] ([MaQuan], [TenQuan]) VALUES (N'Q3', N'Quận 3')
INSERT [dbo].[Quan] ([MaQuan], [TenQuan]) VALUES (N'Q4', N'Quận 4')
INSERT [dbo].[Quan] ([MaQuan], [TenQuan]) VALUES (N'Q5', N'Quận 5')
INSERT [dbo].[Quan] ([MaQuan], [TenQuan]) VALUES (N'Q6', N'Quận 6')
INSERT [dbo].[Quan] ([MaQuan], [TenQuan]) VALUES (N'Q7', N'Quận 7')
INSERT [dbo].[Quan] ([MaQuan], [TenQuan]) VALUES (N'Q8', N'Quận 8')
INSERT [dbo].[Quan] ([MaQuan], [TenQuan]) VALUES (N'Q9', N'Quận 9')
INSERT [dbo].[Quan] ([MaQuan], [TenQuan]) VALUES (N'QBT', N'Quận Bình Tân')
INSERT [dbo].[Quan] ([MaQuan], [TenQuan]) VALUES (N'QBTH', N'Quận Bình Thạnh')
INSERT [dbo].[Quan] ([MaQuan], [TenQuan]) VALUES (N'QGV', N'Quận Gò Vấp')
INSERT [dbo].[Quan] ([MaQuan], [TenQuan]) VALUES (N'QPN', N'Quận Phú Nhuận')
INSERT [dbo].[Quan] ([MaQuan], [TenQuan]) VALUES (N'QTB', N'Quận Tân Bình')
INSERT [dbo].[Quan] ([MaQuan], [TenQuan]) VALUES (N'QTD', N'Quận Thủ Đức')
INSERT [dbo].[Quan] ([MaQuan], [TenQuan]) VALUES (N'QTP', N'Quận Tân Phú')
GO
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'Q01', N'Quản Lý')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'Q02', N'Nhập Liệu')
GO
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [MaQuyen]) VALUES (N'amin', N'123456', N'Q01')
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [MaQuyen]) VALUES (N'loc', N'123456789', N'Q01')
INSERT [dbo].[TaiKhoan] ([TenTaiKhoan], [MatKhau], [MaQuyen]) VALUES (N'tuan', N'123456789', N'Q01')
GO
ALTER TABLE [dbo].[DotTiem]  WITH CHECK ADD  CONSTRAINT [FK_DotTiem_DanhSachTiem] FOREIGN KEY([MaSoDS])
REFERENCES [dbo].[DanhSachTiem] ([MaSoDS])
GO
ALTER TABLE [dbo].[DotTiem] CHECK CONSTRAINT [FK_DotTiem_DanhSachTiem]
GO
ALTER TABLE [dbo].[DotTiem]  WITH CHECK ADD  CONSTRAINT [FK_DotTiem_DoiNguYT] FOREIGN KEY([MaDoiNgu])
REFERENCES [dbo].[DoiNguYT] ([MaDoiNgu])
GO
ALTER TABLE [dbo].[DotTiem] CHECK CONSTRAINT [FK_DotTiem_DoiNguYT]
GO
ALTER TABLE [dbo].[DotTiem]  WITH CHECK ADD  CONSTRAINT [FK_DotTiem_LoaiVacXin] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiVacXin] ([MaLoai])
GO
ALTER TABLE [dbo].[DotTiem] CHECK CONSTRAINT [FK_DotTiem_LoaiVacXin]
GO
ALTER TABLE [dbo].[DotTiem]  WITH CHECK ADD  CONSTRAINT [FK_DotTiem_Phuong] FOREIGN KEY([MaPhuong])
REFERENCES [dbo].[Phuong] ([MaPhuong])
GO
ALTER TABLE [dbo].[DotTiem] CHECK CONSTRAINT [FK_DotTiem_Phuong]
GO
ALTER TABLE [dbo].[DotTiem]  WITH CHECK ADD  CONSTRAINT [FK_DotTiem_Quan] FOREIGN KEY([MaQuan])
REFERENCES [dbo].[Quan] ([MaQuan])
GO
ALTER TABLE [dbo].[DotTiem] CHECK CONSTRAINT [FK_DotTiem_Quan]
GO
ALTER TABLE [dbo].[NguoiDan]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDan_DanhSachTiem] FOREIGN KEY([MaSoDS])
REFERENCES [dbo].[DanhSachTiem] ([MaSoDS])
GO
ALTER TABLE [dbo].[NguoiDan] CHECK CONSTRAINT [FK_NguoiDan_DanhSachTiem]
GO
ALTER TABLE [dbo].[NguoiDan]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDan_Phuong] FOREIGN KEY([MaPhuong])
REFERENCES [dbo].[Phuong] ([MaPhuong])
GO
ALTER TABLE [dbo].[NguoiDan] CHECK CONSTRAINT [FK_NguoiDan_Phuong]
GO
ALTER TABLE [dbo].[NguoiDan]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDan_Quan] FOREIGN KEY([MaQuan])
REFERENCES [dbo].[Quan] ([MaQuan])
GO
ALTER TABLE [dbo].[NguoiDan] CHECK CONSTRAINT [FK_NguoiDan_Quan]
GO
ALTER TABLE [dbo].[NhanVienYT]  WITH CHECK ADD  CONSTRAINT [FK_NhanVienYT_DoiNguYT] FOREIGN KEY([MaDoiNgu])
REFERENCES [dbo].[DoiNguYT] ([MaDoiNgu])
GO
ALTER TABLE [dbo].[NhanVienYT] CHECK CONSTRAINT [FK_NhanVienYT_DoiNguYT]
GO
ALTER TABLE [dbo].[PhieuChungNhan]  WITH CHECK ADD  CONSTRAINT [FK_PhieuChungNhan_DotTiem] FOREIGN KEY([MaDotTiem])
REFERENCES [dbo].[DotTiem] ([MaDotTiem])
GO
ALTER TABLE [dbo].[PhieuChungNhan] CHECK CONSTRAINT [FK_PhieuChungNhan_DotTiem]
GO
ALTER TABLE [dbo].[PhieuChungNhan]  WITH CHECK ADD  CONSTRAINT [FK_PhieuChungNhan_NguoiDan] FOREIGN KEY([CMND])
REFERENCES [dbo].[NguoiDan] ([CMND])
GO
ALTER TABLE [dbo].[PhieuChungNhan] CHECK CONSTRAINT [FK_PhieuChungNhan_NguoiDan]
GO
ALTER TABLE [dbo].[PhieuChungNhan]  WITH CHECK ADD  CONSTRAINT [FK_PhieuChungNhan_NhanVienYT] FOREIGN KEY([MaNhanVienYT])
REFERENCES [dbo].[NhanVienYT] ([MaNhanVienYT])
GO
ALTER TABLE [dbo].[PhieuChungNhan] CHECK CONSTRAINT [FK_PhieuChungNhan_NhanVienYT]
GO
ALTER TABLE [dbo].[Phuong]  WITH CHECK ADD  CONSTRAINT [FK_Phuong_Quan] FOREIGN KEY([MaQuan])
REFERENCES [dbo].[Quan] ([MaQuan])
GO
ALTER TABLE [dbo].[Phuong] CHECK CONSTRAINT [FK_Phuong_Quan]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_Quyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[Quyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_Quyen]
GO