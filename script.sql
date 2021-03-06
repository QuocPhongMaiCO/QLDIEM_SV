USE [master]
GO
/****** Object:  Database [QLDIEM_SV]    Script Date: 01/06/2022 6:07:47 CH ******/
CREATE DATABASE [QLDIEM_SV]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLDIEM_SV', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\QLDIEM_SV.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLDIEM_SV_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\QLDIEM_SV_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLDIEM_SV] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLDIEM_SV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLDIEM_SV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLDIEM_SV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLDIEM_SV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLDIEM_SV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLDIEM_SV] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLDIEM_SV] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLDIEM_SV] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QLDIEM_SV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLDIEM_SV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLDIEM_SV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLDIEM_SV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLDIEM_SV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLDIEM_SV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLDIEM_SV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLDIEM_SV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLDIEM_SV] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLDIEM_SV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLDIEM_SV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLDIEM_SV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLDIEM_SV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLDIEM_SV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLDIEM_SV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLDIEM_SV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLDIEM_SV] SET RECOVERY FULL 
GO
ALTER DATABASE [QLDIEM_SV] SET  MULTI_USER 
GO
ALTER DATABASE [QLDIEM_SV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLDIEM_SV] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLDIEM_SV] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLDIEM_SV] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLDIEM_SV', N'ON'
GO
USE [QLDIEM_SV]
GO
/****** Object:  Table [dbo].[diem]    Script Date: 01/06/2022 6:07:47 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[diem](
	[maBD] [int] NOT NULL,
	[heso1] [float] NOT NULL,
	[heso3] [float] NOT NULL,
	[heso6] [float] NOT NULL,
	[tongDiem] [float] NOT NULL,
	[maGV] [varchar](10) NOT NULL,
	[maSV] [int] NOT NULL,
	[maMH] [varchar](10) NOT NULL,
	[maTC] [varchar](10) NOT NULL,
	[maTL] [varchar](10) NOT NULL,
	[maHK] [varchar](10) NOT NULL,
	[maNH] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[giangvien]    Script Date: 01/06/2022 6:07:47 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[giangvien](
	[maGV] [varchar](10) NOT NULL,
	[tenGV] [varchar](50) NOT NULL,
	[diaChi] [varchar](255) NOT NULL,
	[sdt] [int] NOT NULL,
	[email] [varchar](60) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hocky]    Script Date: 01/06/2022 6:07:47 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hocky](
	[maHK] [varchar](10) NOT NULL,
	[tenHK] [varchar](255) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[khoa]    Script Date: 01/06/2022 6:07:47 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[khoa](
	[maKH] [varchar](10) NOT NULL,
	[tenKH] [varchar](255) NOT NULL,
	[lienheKH] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lop]    Script Date: 01/06/2022 6:07:47 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lop](
	[maLop] [int] NOT NULL,
	[tenLop] [varchar](255) NOT NULL,
	[maKH] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[monhoc]    Script Date: 01/06/2022 6:07:47 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[monhoc](
	[maMH] [varchar](10) NOT NULL,
	[tenMH] [varchar](255) NOT NULL,
	[maTC] [varchar](10) NOT NULL,
	[maTL] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[monhoc_giaovien]    Script Date: 01/06/2022 6:07:47 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[monhoc_giaovien](
	[maMH] [varchar](10) NOT NULL,
	[maGV] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[namhoc]    Script Date: 01/06/2022 6:07:47 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[namhoc](
	[maNH] [varchar](10) NOT NULL,
	[tenNH] [varchar](255) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[nienkhoa]    Script Date: 01/06/2022 6:07:47 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[nienkhoa](
	[maNK] [varchar](10) NOT NULL,
	[tenNK] [varchar](255) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[roles]    Script Date: 01/06/2022 6:07:47 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[roles](
	[id] [int] NOT NULL,
	[role] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sinhvien]    Script Date: 01/06/2022 6:07:47 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sinhvien](
	[maSV] [int] NOT NULL,
	[tenSV] [varchar](50) NOT NULL,
	[diaChi] [varchar](255) NOT NULL,
	[sdt] [int] NOT NULL,
	[email] [varchar](60) NOT NULL,
	[maLop] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[taikhoan]    Script Date: 01/06/2022 6:07:47 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[taikhoan](
	[id] [int] NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[role] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tinchi]    Script Date: 01/06/2022 6:07:47 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tinchi](
	[maTC] [varchar](10) NOT NULL,
	[soTC] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[theloai]    Script Date: 01/06/2022 6:07:47 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[theloai](
	[maTL] [varchar](10) NOT NULL,
	[tenTL] [varchar](255) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[xeploai]    Script Date: 01/06/2022 6:07:47 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[xeploai](
	[maXL] [int] NOT NULL,
	[canDuoi] [float] NOT NULL,
	[canTren] [float] NOT NULL,
	[tenXL] [varchar](30) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[diem] ([maBD], [heso1], [heso3], [heso6], [tongDiem], [maGV], [maSV], [maMH], [maTC], [maTL], [maHK], [maNH]) VALUES (39, 5, 6, 8, 7, N'2021000002', 1, N'2117100153', N'TC1', N'TL02', N'HK1', N'NH01')
INSERT [dbo].[diem] ([maBD], [heso1], [heso3], [heso6], [tongDiem], [maGV], [maSV], [maMH], [maTC], [maTL], [maHK], [maNH]) VALUES (40, 0, 0, 0, 0, N'2021000002', 1, N'2117100153', N'TC1', N'TL02', N'HK1', N'NH01')
INSERT [dbo].[diem] ([maBD], [heso1], [heso3], [heso6], [tongDiem], [maGV], [maSV], [maMH], [maTC], [maTL], [maHK], [maNH]) VALUES (41, 5, 6, 8, 7, N'2021000002', 1, N'2117100153', N'TC1', N'TL02', N'HK1', N'NH01')
INSERT [dbo].[diem] ([maBD], [heso1], [heso3], [heso6], [tongDiem], [maGV], [maSV], [maMH], [maTC], [maTL], [maHK], [maNH]) VALUES (50, 5, 6, 6, 8, N'2021000002', 2117100111, N'2117100153', N'TC1', N'TL02', N'HK1', N'NH01')
INSERT [dbo].[diem] ([maBD], [heso1], [heso3], [heso6], [tongDiem], [maGV], [maSV], [maMH], [maTC], [maTL], [maHK], [maNH]) VALUES (52, 5, 6, 8, 7, N'2021000002', 2117100111, N'2117100153', N'TC1', N'TL02', N'HK1', N'NH01')
INSERT [dbo].[diem] ([maBD], [heso1], [heso3], [heso6], [tongDiem], [maGV], [maSV], [maMH], [maTC], [maTL], [maHK], [maNH]) VALUES (53, 10, 8, 8, 7, N'2021000002', 2117100111, N'2117100153', N'TC1', N'TL02', N'HK1', N'NH01')
INSERT [dbo].[diem] ([maBD], [heso1], [heso3], [heso6], [tongDiem], [maGV], [maSV], [maMH], [maTC], [maTL], [maHK], [maNH]) VALUES (54, 10, 8, 8, 7, N'2021000002', 2117100111, N'2117100153', N'TC1', N'TL01', N'HK1', N'NH01')
INSERT [dbo].[diem] ([maBD], [heso1], [heso3], [heso6], [tongDiem], [maGV], [maSV], [maMH], [maTC], [maTL], [maHK], [maNH]) VALUES (55, 10, 8, 8, 0, N'3', 3, N'2117100153', N'TC3', N'TL02', N'HK2', N'NH03')
INSERT [dbo].[giangvien] ([maGV], [tenGV], [diaChi], [sdt], [email]) VALUES (N'2021000002', N'Lê Th? C', N'Duy Xuyên', 257893465, N'c@gmail.com')
INSERT [dbo].[giangvien] ([maGV], [tenGV], [diaChi], [sdt], [email]) VALUES (N'202100001', N'Nguy?n Văn A', N'Tam K?', 797207493, N'a@gmail.com')
INSERT [dbo].[giangvien] ([maGV], [tenGV], [diaChi], [sdt], [email]) VALUES (N'2117100123', N'H? Đ?n', N'Đà N?ng', 123456, N'leducnam1805@gmail.com')
INSERT [dbo].[giangvien] ([maGV], [tenGV], [diaChi], [sdt], [email]) VALUES (N'3', N'H? Th? E', N'Đà N?ng', 797207493, N'E@gmail.com')
INSERT [dbo].[hocky] ([maHK], [tenHK]) VALUES (N'HK1', N'1')
INSERT [dbo].[hocky] ([maHK], [tenHK]) VALUES (N'HK2', N'2')
INSERT [dbo].[hocky] ([maHK], [tenHK]) VALUES (N'HK3', N'3')
INSERT [dbo].[khoa] ([maKH], [tenKH], [lienheKH]) VALUES (N'CNTT', N'Công Ngh? Thông Tin', N'cntt@gmail.com')
INSERT [dbo].[khoa] ([maKH], [tenKH], [lienheKH]) VALUES (N'LYHOASINH', N'L? Hóa Sinh', N'lyhoasinh@gmail.com')
INSERT [dbo].[khoa] ([maKH], [tenKH], [lienheKH]) VALUES (N'TOAN', N'Sư Ph?m Toán', N'toan@gmail.com')
INSERT [dbo].[lop] ([maLop], [tenLop], [maKH]) VALUES (1, N'DT17CTT01', N'CNTT')
INSERT [dbo].[lop] ([maLop], [tenLop], [maKH]) VALUES (2, N'DT18SGT01', N'TOAN')
INSERT [dbo].[lop] ([maLop], [tenLop], [maKH]) VALUES (3, N'DT18CTT01', N'CNTT')
INSERT [dbo].[monhoc] ([maMH], [tenMH], [maTC], [maTL]) VALUES (N'2117100153', N'Toán Cao C?p', N'TC2', N'TL02')
INSERT [dbo].[monhoc] ([maMH], [tenMH], [maTC], [maTL]) VALUES (N'2117100158', N'L?p Tr?nh Di Đ?ng', N'TC2', N'TL02')
INSERT [dbo].[monhoc] ([maMH], [tenMH], [maTC], [maTL]) VALUES (N'211710054', N'Tri?t H?c', N'TC2', N'TL01')
INSERT [dbo].[namhoc] ([maNH], [tenNH]) VALUES (N'NH01', N'2017-2018')
INSERT [dbo].[namhoc] ([maNH], [tenNH]) VALUES (N'NH02', N'2018-2019')
INSERT [dbo].[namhoc] ([maNH], [tenNH]) VALUES (N'NH03', N'2019-2020')
INSERT [dbo].[nienkhoa] ([maNK], [tenNK]) VALUES (N'NKCD02', N'2018-2022')
INSERT [dbo].[nienkhoa] ([maNK], [tenNK]) VALUES (N'NKDH01', N'2017-2021')
INSERT [dbo].[nienkhoa] ([maNK], [tenNK]) VALUES (N'NKDH02', N'2019-2023')
INSERT [dbo].[roles] ([id], [role]) VALUES (1, N'Admin')
INSERT [dbo].[roles] ([id], [role]) VALUES (2, N'Trư?ng Ph?ng')
INSERT [dbo].[roles] ([id], [role]) VALUES (3, N'Phó Ph?ng')
INSERT [dbo].[sinhvien] ([maSV], [tenSV], [diaChi], [sdt], [email], [maLop]) VALUES (1, N'Lê Đ?c Nam', N'Qu?ng Nam', 797207493, N'teo@vinaenter.edu.vn', 1)
INSERT [dbo].[sinhvien] ([maSV], [tenSV], [diaChi], [sdt], [email], [maLop]) VALUES (2, N'Alăng C', N'Đà N?ng', 123456, N'leducnam1805@gmail.com', 1)
INSERT [dbo].[sinhvien] ([maSV], [tenSV], [diaChi], [sdt], [email], [maLop]) VALUES (3, N'Lê Văn D', N'Đà N?ng', 797207493, N'd@gmail.com', 2)
INSERT [dbo].[sinhvien] ([maSV], [tenSV], [diaChi], [sdt], [email], [maLop]) VALUES (2117100111, N'H? Nhan', N'Đà N?ng', 797207493, N'teo@vinaenter.edu.vn', 2)
INSERT [dbo].[taikhoan] ([id], [username], [password], [email], [role]) VALUES (1, N'Admin', N'123', N'admin@gmail.com', 1)
INSERT [dbo].[taikhoan] ([id], [username], [password], [email], [role]) VALUES (2, N'phophong', N'123', N'phophong@gmail.com', 3)
INSERT [dbo].[tinchi] ([maTC], [soTC]) VALUES (N'TC1', 1)
INSERT [dbo].[tinchi] ([maTC], [soTC]) VALUES (N'TC2', 2)
INSERT [dbo].[tinchi] ([maTC], [soTC]) VALUES (N'TC3', 3)
INSERT [dbo].[theloai] ([maTL], [tenTL]) VALUES (N'TL01', N'Chính tr? và X? H?i')
INSERT [dbo].[theloai] ([maTL], [tenTL]) VALUES (N'TL02', N'Chuyên Nghành')
INSERT [dbo].[theloai] ([maTL], [tenTL]) VALUES (N'TL03', N'Du H?c')
USE [master]
GO
ALTER DATABASE [QLDIEM_SV] SET  READ_WRITE 
GO
