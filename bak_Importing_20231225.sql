-- before running script, please drop database Importing in SSMS


USE [Importing]
GO
/* drop all table */
drop table tb_BacSi
drop table tb_SieuAm
drop table tb_BenhNhan
drop table tb_MauSieuAm
drop table tb_DangKy
drop table tb_GioiTinh
drop table tb_HeThong
drop table tb_Khoa
drop table tb_KieuIn
drop table InKetQua


/****** Object:  Table [dbo].[InKetQua]    Script Date: 11/28/2023 8:26:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[InKetQua](
	[ID] [float] NULL,
	[Ngay] [datetime] NULL,
	[SoPhieu] [nvarchar](255) NULL,
	[IDBenhNhan] [nvarchar](255) NULL,
	[TenBenhNhan] [nvarchar](255) NULL,
	[TenBacSiSieuAm] [nvarchar](255) NULL,
	[TenBacSiChiDinh] [nvarchar](255) NULL,
	[MauSieuAm] [nvarchar](255) NULL,
	[ChanDoan] [nvarchar](255) NULL,
	[NoiDung1] [nvarchar](max) NULL,
	[NoiDung2] [nvarchar](255) NULL,
	[KetLuan] [nvarchar](255) NULL,
	[DeNghi] [nvarchar](255) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[GioiTinh] [nvarchar](255) NULL,
	[NamSinh] [nvarchar](255) NULL,
	[SDT] [nvarchar](255) NULL,
	[Hinh1] [nvarchar](255) NULL,
	[Hinh2] [nvarchar](255) NULL,
	[Hinh3] [nvarchar](255) NULL,
	[Hinh4] [nvarchar](255) NULL,
	[Hinh5] [nvarchar](255) NULL,
	[Hinh6] [nvarchar](255) NULL,
	[LoGo] [nvarchar](255) NULL,
	[TieuDeMauSieuAm] [nvarchar](255) NULL,
	[ChuKy] [nvarchar](255) NULL,
	[BHYT] [nvarchar](255) NULL,
	[Khoa] [nvarchar](255) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_BacSi]    Script Date: 11/28/2023 8:26:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_BacSi](
	[ID] [INT] IDENTITY(1,1) primary key,
	[HoTenBacSi] [nvarchar](255) NULL,
	[HinhChuKy] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_BenhNhan]    Script Date: 11/28/2023 8:26:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_BenhNhan](
	[ID] [INT] IDENTITY(1,1) primary key,
	[IDBenhNhan] [nvarchar](255) NULL,
	[HoTenBenhNhan] [nvarchar](255) NULL,
	[GioiTinh] [nvarchar](255) NULL,
	[NamSinh] [nvarchar](255) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[SDT] [nvarchar](255) NULL,
	[BHYT] [nvarchar](255) NULL,
	[Del] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_DangKy]    Script Date: 11/28/2023 8:26:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_DangKy](
	[ID] [nvarchar](255) NULL,
	[MaDangKy] [nvarchar](255) NULL,
	[ThoiGianDangKy] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_GioiTinh]    Script Date: 11/28/2023 8:26:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_GioiTinh](
	[ID] [float] NULL,
	[Ma] [float] NULL,
	[GioiTinh] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_HeThong]    Script Date: 11/28/2023 8:26:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_HeThong](
	[ID] [float] NULL,
	[TieuDePhongKham] [nvarchar](max) NULL,
	[LoGoPhongKham] [nvarchar](255) NULL,
	[IDCaptureCard] [float] NULL,
	[IDVideoInput] [float] NULL,
	[IDReSoLuTion] [float] NULL,
	[DuongDanLoadHinhTuDong] [nvarchar](255) NULL,
	[IDMaLuuTru] [float] NULL,
	[MatKhau] [nvarchar](255) NULL,
	[BaoMat] [bit] NOT NULL,
	[MaDangKy] [nvarchar](255) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Khoa]    Script Date: 11/28/2023 8:26:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Khoa](
	[ID] [float] NULL,
	[TenKhoa] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_KieuIn]    Script Date: 11/28/2023 8:26:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_KieuIn](
	[ID] [float] NULL,
	[Ma] [float] NULL,
	[KhoIn] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_MauSieuAm]    Script Date: 11/28/2023 8:26:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tb_MauSieuAm](
	[ID] [INT] IDENTITY(1,1) primary key,
	[STT] [float] NULL,
	[TenMau] [nvarchar](255) NULL,
	[TieuDe] [nvarchar](255) NULL,
	[GioiTinh] [nvarchar](255) NULL,
	[ChuaSuDung] [bit] NOT NULL,
	[ChanDoan] [nvarchar](max) NULL,
	[SoHinhInToiDa] [float] NULL,
	[SoPhanMoTa] [float] NULL,
	[KieuIn] [nvarchar](255) NULL,
	[NoiDung1] [nvarchar](max) NULL,
	[NoiDung2] [nvarchar](max) NULL,
	[KetLuan] [nvarchar](max) NULL,
	[DeNghi] [nvarchar](255) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_SieuAm]    Script Date: 11/28/2023 8:26:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_SieuAm](
	[ID] [INT] IDENTITY(1,1) primary key,
	[Ngay] [datetime] NULL,
	[SoPhieu] [nvarchar](255) NULL,
	[IDBenhNhan] [nvarchar](255) NULL,
	[TenBenhNhan] [nvarchar](255) NULL,
	[TenBacSiSieuAm] [nvarchar](255) NULL,
	[TenBacSiChiDinh] [nvarchar](255) NULL,
	[MauSieuAm] [nvarchar](255) NULL,
	[ChanDoan] [nvarchar](255) NULL,
	[NoiDung1] [nvarchar](max) NULL,
	[NoiDung2] [nvarchar](255) NULL,
	[KetLuan] [nvarchar](255) NULL,
	[DeNghi] [nvarchar](255) NULL,
	[Khoa] [nvarchar](255) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


INSERT [dbo].[InKetQua] ([ID], [Ngay], [SoPhieu], [IDBenhNhan], [TenBenhNhan], [TenBacSiSieuAm], [TenBacSiChiDinh], [MauSieuAm], [ChanDoan], [NoiDung1], [NoiDung2], [KetLuan], [DeNghi], [DiaChi], [GioiTinh], [NamSinh], [SDT], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Hinh5], [Hinh6], [LoGo], [TieuDeMauSieuAm], [ChuKy], [BHYT], [Khoa]) VALUES (125, CAST(N'2023-11-21T22:55:33.000' AS DateTime), N'2311210001', N'2311210001', N'Bui Trương Vỉ', N'abc', N'abc', N'Siêu Âm Tổng Quát Nam', N'Kiểm tra tổng quát', N'{\rtf1\ansi\ansicpg1252\deff0\nouicompat{\fonttbl{\f0\fnil Times New Roman;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\fnil\fcharset238 Times New Roman;}{\f3\fnil\fcharset163 Times New Roman;}{\f4\fswiss\fcharset238 Arial;}}
{\colortbl ;\red0\green0\blue0;\red0\green0\blue255;}
{\*\generator Riched20 10.0.19041}\viewkind4\uc1 
\pard\li284\sb40\sa40\tx567\tx851\tx1134\tx1418\tx1701\tx1985\tx2268\tx2552\tx2835\tx3119\tx3402\tx3686\tx3969\tx4253\tx4536\tx4820\tx5103\tx5387\tx5670\tx5954\tx6237\tx6521\tx6804\tx7088\tx7371\tx7655\tx7938\tx8222\tx8505\tx8789\tx9072\cf1\b\f0\fs24\lang1066 GAN:\tab\b0  - K\f1\lang1033\''ed\f0 ch\f1  th\f2\u432?\f3\lang1066\u7899?\f1\lang1033 c\f3\lang1066 : \tab Kh\f1\lang1033\''f4\f0 ng to\par
\tab\tab\tab  - Nhu m\f1\''f4\f0 :\tab\f2\''d0\f3\lang1066\u7891?\f1\lang1033 ng \f3\lang1066 nh\u7845?t b\u7901? \f4\''f0\f3\u7873?u\par
\tab\tab\tab  - M\u7841?ch m\f1\lang1033\''e1\f0 u:\tab B\f1\''ec\f0 nh\f1  th\f2\u432?\f3\lang1066\u7901?\f1\lang1033 ng\f3\lang1066\par
\par

\pard\li284\ri1836\sb40\sa40\tx567\tx851\tx1134\tx1418\tx1701\tx1985\tx2268\tx2552\tx2835\tx3119\tx3402\tx3686\tx3969\tx4253\tx4536\tx4820\tx5103\tx5387\tx5670\tx5954\tx6237\tx6521\tx6804\tx7088\tx7371\tx7655\tx7938\tx8222\tx8505\tx8789\tx9072\b M\u7852?T:\b0\tab - \f2\lang1033\''d0\u432?\f3\lang1066\u7901?\f1\lang1033 ng \f3\lang1066 m\u7853?t trong gan: Kh\f1\lang1033\''f4\f0 ng d\f1\''e3\f0 n\par

\pard\li284\sb40\sa40\tx567\tx851\tx1134\tx1418\tx1701\tx1985\tx2268\tx2552\tx2835\tx3119\tx3402\tx3686\tx3969\tx4253\tx4536\tx4820\tx5103\tx5387\tx5670\tx5954\tx6237\tx6521\tx6804\tx7088\tx7371\tx7655\tx7938\tx8222\tx8505\tx8789\tx9072\tab\tab\tab - \f3\lang1066\u7888?ng m\u7853?t ch\u7911?:  Kh\f1\lang1033\''f4\f0 ng d\f1\''e3\f0 n, kh\f1\''f4\f0 ng s\f3\lang1066\u7887?i\par
\tab  \tab\tab - T\f1\lang1033\''fa\f0 i m\f3\lang1066\u7853?t:  Th\f1\lang1033\''e0\f0 nh kh\f1\''f4\f0 ng d\f1\''e0\f0 y, kh\f1\''f4\f0 ng s\f3\lang1066\u7887?i \par
\par
\b T\u7908?Y:\b0\tab  - B\f1\lang1033\''ec\f0 nh\f1  th\f2\u432?\f3\lang1066\u7901?\f1\lang1033 ng\f3\lang1066\tab\par
\b L\f1\lang1033\''c1\f0 CH:\b0\tab  - Kh\f1\''f4\f0 ng to\par
\b TH\f3\lang1066\u7852?N:\tab\b0  - Tr\f1\lang1033\''e1\f0 i : Kh\f1\''f4\f0 ng s\f3\lang1066\u7887?i, kh\f1\lang1033\''f4\f0 ng \f3\lang1066\u7913?\f1\lang1033  n\f2\u432?\f3\lang1066\u7899?\f1\lang1033 c\f3\lang1066  \par
\tab  \tab\tab  - Ph\u7843?i : Kh\f1\lang1033\''f4\f0 ng s\f3\lang1066\u7887?i, kh\f1\lang1033\''f4\f0 ng \f3\lang1066\u7913?\f1\lang1033  n\f2\u432?\f3\lang1066\u7899?\f1\lang1033 c\f3\lang1066\par
\par
\b B\f1\lang1033\''c0\f0 NG QUANG:\b0  Th\f1\''e0\f0 nh kh\f1\''f4\f0 ng d\f1\''e0\f0 y, kh\f1\''f4\f0 ng s\f3\lang1066\u7887?i\par
\b TI\u7872?N LI\u7878?T TUY\u7870?N\cf2 :\b0  \cf1 Kh\f1\lang1033\''f4\f0 ng to\par
\b\f2\''d0\f3\lang1066\u7896?\f1\lang1033 NG \f3\lang1066 M\u7840?CH CH\u7910? B\u7908?NG:\b0  B\f1\lang1033\''ec\f0 nh\f1  th\f2\u432?\f3\lang1066\u7901?\f1\lang1033 ng\f3\lang1066\par
\b\f1\lang1033 C\f2\u416?\f1  \f0\lang1066 QUAN KH\f1\lang1033\''c1\f0 C:\b0  \f1 Ch\f2\u432?\f1 a \f0 ph\f1\''e1\f0 t hi\f3\lang1066\u7879?n g\f1\lang1033\''ec\f0  l\f3\lang1066\u7841?\cf0\par

\pard\sb60\sa60\qj\fs20\par

\pard\fs24\par
}
', N'{\rtf1\ansi\ansicpg1258\deff0\nouicompat\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
{\*\generator Riched20 10.0.19041}\viewkind4\uc1 
\pard\b\f0\fs24\par
}
', N'HIỆN CHƯA PHÁT HIỆN BẤT THƯỜNG TRÊN SIÊU ÂM TỔNG QUÁT', N'', N'hcm', N'Nam', N'11/21/2023', N'0946875049', N'{length = 5331, bytes = 0xffd8ffe0 00104a46 49460001 01010060 ... 04851451 401fffd9 }', N'{length = 0, bytes = 0x}', N'{length = 0, bytes = 0x}', N'{length = 0, bytes = 0x}', N'{length = 0, bytes = 0x}', N'{length = 0, bytes = 0x}', N'{length = 16782, bytes = 0xffd8ffe0 00104a46 49460001 01010048 ... 40404040 4041ffd9 }', N'SIÊU ÂM TỔNG QUÁT NAM', N'{length = 0, bytes = 0x}', N'12345', N'CĐHA')
INSERT [dbo].[InKetQua] ([ID], [Ngay], [SoPhieu], [IDBenhNhan], [TenBenhNhan], [TenBacSiSieuAm], [TenBacSiChiDinh], [MauSieuAm], [ChanDoan], [NoiDung1], [NoiDung2], [KetLuan], [DeNghi], [DiaChi], [GioiTinh], [NamSinh], [SDT], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Hinh5], [Hinh6], [LoGo], [TieuDeMauSieuAm], [ChuKy], [BHYT], [Khoa]) VALUES (126, CAST(N'2023-11-27T19:32:34.000' AS DateTime), N'2311270001', N'2311270001', N'Trần Công Danh', N'', N'', N'Siêu âm tim', N'', N'{\rtf1\ansi\ansicpg1252\deff0\nouicompat{\fonttbl{\f0\froman\fprq2\fcharset0 Times New Roman;}{\f1\froman\fprq2\fcharset163 Times New Roman;}{\f2\froman\fprq2\fcharset238 Times New Roman;}}
{\*\generator Riched20 10.0.19041}\viewkind4\uc1 
\pard\li142\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\ul\b\f0\fs24\lang1033 I.TM:\par
\ulnone\b0 V\''e1ch li\''ean TTr:\tab\tab mm\tab\tab\tab\tab Th\f1\lang1066\u7845?t ph\u7843?i:\tab\tab\tab\tab mm\par
Th\u7845?t tr\''e1i TTr:\tab\tab mm\tab\tab\tab\tab T.Th\u7845?t P TTr:\tab\tab mm\par
Ts th\u7845?t T TTr:\tab\tab mm\tab\tab\tab\tab T.Th\u7845?t P TT:\tab\tab\tab mm\par
V\''e1ch li\''ean TT:\tab\tab\tab mm\tab\tab\tab\tab\''d0MC g\u7889?c:\tab\tab\tab\tab mm\par
Th\u7845?t Tr\''e1i TT:\tab\tab\tab mm\tab\tab\tab\tab Nh\f2\u297? Tr\''e1i:\tab\tab\tab\tab mm\par
Ts.th\f1\u7845?t(T) TT:\tab\tab mm\tab\tab\tab\tab B.\''f0\u7897? m\u7903? \''d0MC:\tab\tab mm\f0\lang1033\par
\f1\lang1066 EF\tab\tab\tab\tab\tab :\tab\tab %\tab\tab\tab\tab\tab KL c\''f5 th\u7845?t T:\tab\tab\tab g/m\super 2\par
\nosupersub FR\tab\tab\tab\tab :\tab\tab %\tab\tab\tab\tab\tab C/s\u7889? KLC th\u7845?t T:\tab g/m\super 2\par
\ul\nosupersub\b II.DOPPLER\par

\pard\li426\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\ulnone 1/ D\u242?ng 2 l\''e1:\par
\b0 Vmax:\tab\tab m/s\tab\tab GdPmax:\tab\tab mmHg\tab GdPmoy:\tab\tab mmHg\par
H\u7903? 2 l\''e1:(+)\tab\tab\tab PHT:\tab\tab ms \tab\b\par

\pard\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\b0\tab H\u7865?p 2 l\''e1:(-)\tab\tab\tab SM:\tab\tab cm\super 2\nosupersub\par

\pard\li426\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\b 2/ D\u242?ng ch\u7911?:\par
\b0 Vmax:\tab\tab m/s\tab\tab GdPmax:\tab\tab mmHg\tab GdPmoy:\tab\tab mmHg\par
H\u7903? ch\u7911?:(+)\tab\tab\tab PHT:\tab\tab ms\tab\tab d=\tab mm\tab EDTD:\tab\tab m/s\b\par

\pard\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\b0\tab H\u7865?p ch\u7911?:(-)\tab\tab\tab SA:\tab\tab cm\super 2\nosupersub\tab\tab\''d0\u7897? d\''e0i:\par

\pard\li426\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\b 3/ D\u242?ng 3 l\''e1:\b0\tab\tab\par
Vmax:\tab\tab m/s\tab\tab GdPmax:\tab\tab mmHg\tab GdPmoy:\tab\tab mmHg\par

\pard\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\tab H\u7903? 3 l\''e1:(+)\tab\tab\tab PAPs:\tab\tab mmHg\par

\pard\li426\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\b 4/ D\u242?ng ph\u7893?i:\tab\b0\par
Vmax:\tab\tab m/s\tab\tab GdPmax:\tab\tab mmHg\tab GdPmoy:\tab\tab mmHg\par
H\u7903? ph\u7893?i:(+)\tab\tab\tab PAPmoy:\tab\tab mmHg\tab PAP diast:\tab\tab mmHg \b\par

\pard\li142\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\ul III.NH\u7852?N X\''c9T:\par
\ulnone\b0\f0\lang1033 C\f1\lang1066\''e1\f0\lang1033 c th\f1\lang1066\''e0\f0\lang1033 nh tim kh\f1\lang1066\''f4\f0\lang1033 ng \f1\lang1066 d\''e0y\f0\lang1033 . C\f1\lang1066\''e1\f0\lang1033 c bu\f1\lang1066\u7891?ng tim kh\''f4\f0\lang1033 ng d\f1\lang1066\u227?\f0\lang1033 n\f1\lang1066 .\par
Ch\u7913?c n\''e3ng t\''e2m thu th\u7845?t tr\''e1i gi\u7843?m EF=\tab\tab %.\par
H\u7903? van 2 l\''e1:\tab /4.\par
H\u7903? van 3 l\''e1:\tab /4.\par
Kh\''f4ng t\''e3ng \''e1p \''f0\u7897?ng m\u7841?ch ph\u7893?i PAPs =\tab\tab mmHg.\par
Kh\''f4ng tr\''e0n d\u7883?ch m\''e0ng ngo\''e0i tim.\par

\pard\par

\pard\sa160\sl252\slmult1\f0\fs22\lang1033\par

\pard\ul\b\f1\fs24\lang1066\par
}
', N'{\rtf1\ansi\ansicpg1258\deff0\nouicompat\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
{\*\generator Riched20 10.0.19041}\viewkind4\uc1 
\pard\b\f0\fs24\par
}
', N'HIỆN TẠI KHÔNG PHÁT HIỆN BẤT THƯỜNG TRÊN SIÊU ÂM TIM', N'', N'123 LTK', N'Nam', N'11/27/2023', N'12344568', N'{length = 54510, bytes = 0xffd8ffe0 00104a46 49460001 01010060 ... d42b722e 647fffd9 }', N'{length = 0, bytes = 0x}', N'{length = 0, bytes = 0x}', N'{length = 0, bytes = 0x}', N'{length = 0, bytes = 0x}', N'{length = 0, bytes = 0x}', N'{length = 16782, bytes = 0xffd8ffe0 00104a46 49460001 01010048 ... 40404040 4041ffd9 }', N'SIÊU ÂM TIM', N'{length = 0, bytes = 0x}', N'123', N'CĐHA')
GO

set identity_insert [dbo].[tb_BenhNhan] on
INSERT [dbo].[tb_BenhNhan] ([ID], [IDBenhNhan], [HoTenBenhNhan], [GioiTinh], [NamSinh], [DiaChi], [SDT], [BHYT], [Del]) VALUES (509, N'2311180001', N'Bùi Trương Vỉ', N'Nam', N'08/24/1998', N'', N'', N'', NULL)
INSERT [dbo].[tb_BenhNhan] ([ID], [IDBenhNhan], [HoTenBenhNhan], [GioiTinh], [NamSinh], [DiaChi], [SDT], [BHYT], [Del]) VALUES (510, N'2311210001', N'Trần Văn B', N'Nam', N'11/21/2023', N'hcm', N'0946875049', N'12345', NULL)
GO
INSERT [dbo].[tb_GioiTinh] ([ID], [Ma], [GioiTinh]) VALUES (1, 0, N'Nam')
INSERT [dbo].[tb_GioiTinh] ([ID], [Ma], [GioiTinh]) VALUES (2, 1, N'Nữ')
GO
set identity_insert [dbo].[tb_BenhNhan] off

INSERT [dbo].[tb_HeThong] ([ID], [TieuDePhongKham], [LoGoPhongKham], [IDCaptureCard], [IDVideoInput], [IDReSoLuTion], [DuongDanLoadHinhTuDong], [IDMaLuuTru], [MatKhau], [BaoMat], [MaDangKy]) VALUES (1, N'{\rtf1\ansi\ansicpg1258\deff0\nouicompat\deflang1066{\fonttbl{\f0\fnil\fcharset0 Times New Roman;}{\f1\fswiss\fcharset238 Arial;}{\f2\fnil\fcharset238 Times New Roman;}{\f3\fnil\fcharset163 Times New Roman;}{\f4\fnil\fcharset238 Times New Roman CE;}}
{\colortbl ;\red255\green0\blue0;\red0\green0\blue0;}
{\*\generator Riched20 10.0.19041}\viewkind4\uc1 
\pard\qc\cf1\b\f0\fs29\lang1033                                        Minh Long Med - UltraSound                                       \par

\pard\cf2\b0\fs17                                                         \f1\fs20\''d0\f0 C: 578/60 \f2\''d0\f1\u432?\f3\lang1066\u7901?ng l\f0\lang1033\''ea quang \f1\''f0\f3\lang1066\u7883?nh, P.1, Q. G\f0\lang1033\''f2 v\f3\lang1066\u7845?p, TpHCM\f4\par
                                                 S\''d0T:  0909572035 \f0\lang1033 -\f4\lang1066  0987846364    Email:\f0\lang1033 minhlongmedtech@gmail.com\cf0\b\f3\fs24\lang1066\par
}', N'O:\Users\PC\Desktop\ultrasound\Giai Phap Tra Ket Qua SA\PM TraKetQuaSAVer1.03_final\LoGoPhongKham\LogoPhongKham.jpg', 0, -1, 1, N'C:\LayHinhTuDong', 4, N'123', 0, N'5325811260383400254')
GO
INSERT [dbo].[tb_Khoa] ([ID], [TenKhoa]) VALUES (1, NULL)
INSERT [dbo].[tb_Khoa] ([ID], [TenKhoa]) VALUES (2, N'Sản')
INSERT [dbo].[tb_Khoa] ([ID], [TenKhoa]) VALUES (3, N'Nhi')
GO
INSERT [dbo].[tb_KieuIn] ([ID], [Ma], [KhoIn]) VALUES (1, 0, N'Mặc định')
INSERT [dbo].[tb_KieuIn] ([ID], [Ma], [KhoIn]) VALUES (2, 1, N'Ngang')
GO

set identity_insert [dbo].[tb_MauSieuAm] on
INSERT [dbo].[tb_MauSieuAm] ([ID], [STT], [TenMau], [TieuDe], [GioiTinh], [ChuaSuDung], [ChanDoan], [SoHinhInToiDa], [SoPhanMoTa], [KieuIn], [NoiDung1], [NoiDung2], [KetLuan], [DeNghi]) VALUES (77, 11, N'Siêu Âm Tổng Quát Nữ', N'SIÊU ÂM TỔNG QUÁT NỮ', N'Nữ', 0, N'{\rtf1\ansi\ansicpg1258\deff0\nouicompat\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
{\*\generator Riched20 10.0.22621}\viewkind4\uc1 
\pard\b\f0\fs24\par
}', 4, 1, N'Dọc', N'{\rtf1\ansi\ansicpg1252\deff0\nouicompat{\fonttbl{\f0\fnil Times New Roman;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\fnil\fcharset238 Times New Roman;}{\f3\fnil\fcharset163 Times New Roman;}{\f4\fswiss\fcharset238 Arial;}}
{\colortbl ;\red0\green0\blue0;\red0\green0\blue255;}
{\*\generator Riched20 10.0.22621}\viewkind4\uc1 
\pard\li238\sb20\sa20\tx480\tx840\tx1080\tx1440\tx1680\tx1920\tx2160\tx2400\tx2610\tx2880\tx3120\tx3360\tx3600\tx3840\tx4080\tx4320\tx4560\tx4800\tx5160\tx5400\tx5640\tx6000\tx6240\tx6480\tx6840\tx7080\tx7320\tx7560\tx7800\tx8040\cf1\b\f0\fs24\lang1066 1.GAN\b0 :\tab - K\f1\lang1033\''ed\f0 ch \f1 th\f2\u432?\f3\lang1066\u7899?\f1\lang1033 c\f3\lang1066  : \tab Kh\f1\lang1033\''f4\f0 ng to\par
\tab\tab\tab - Nhu m\f1\''f4\f0 : \f2\''d0\f3\lang1066\u7891?\f1\lang1033 n\f3\lang1066 g nh\u7845?t b\u7901? \f4\lang1033\''f0\f3\lang1066\u7873?u \par
\tab\tab\tab - M\u7841?ch m\f1\lang1033\''e1\f0 u: B\f1\''ec\f0 nh t\f1 hu\f3\lang1066\u7901?ng\par
\par
\b 2.M\u7852?T\b0 :\tab - \f2\lang1033\''d0\u432?\f3\lang1066\u7901?\f1\lang1033 ng \f3\lang1066 m\u7853?t trong gan: Kh\f1\lang1033\''f4\f0 ng d\f1\''e3\f0 n\par
\tab\tab\tab - \f3\lang1066\u7888?ng m\u7853?t ch\u7911?: Kh\f1\lang1033\''f4\f0 ng d\f1\''e3\f0 n, kh\f1\''f4\f0 ng s\f3\lang1066\u7887?i\par
\tab\tab\tab - T\f1\lang1033\''fa\f0 i m\f3\lang1066\u7853?t: Th\f1\lang1033\''e0\f0 nh kh\f1\''f4\f0 ng d\f1\''e0\f0 y, kh\f1\''f4\f0 ng s\f3\lang1066\u7887?i \par
\par
\b 3.T\u7908?Y\b0 :\tab - \f1\lang1033 Ch\f2\u432?\f1 a\f0\lang1066  ph\f1\lang1033\''e1\f0 t hi\f3\lang1066\u7879?n b\u7845?t\f1\lang1033  th\f2\u432?\f3\lang1066\u7901?\f1\lang1033 ng\f3\lang1066\tab\par
\b 4.L\f1\lang1033\''c1\f0 CH\b0 :\tab - Kh\f1\''f4\f0 ng to\par
\b 5.TH\f3\lang1066\u7852?N\b0 :\tab - Tr\f1\lang1033\''e1\f0 i : Kh\f1\''f4\f0 ng s\f3\lang1066\u7887?i, kh\f1\lang1033\''f4\f0 ng \f3\lang1066\u7913?\f1\lang1033  n\f2\u432?\f3\lang1066\u7899?\f1\lang1033 c\f3\lang1066  \par
\tab\tab\tab\tab - Ph\u7843?i : Kh\f1\lang1033\''f4\f0 ng s\f3\lang1066\u7887?i, kh\f1\lang1033\''f4\f0 ng \f3\lang1066\u7913?\f1\lang1033  n\f2\u432?\f3\lang1066\u7899?\f1\lang1033 c\f3\lang1066\par
\par
\b 6.B\f1\lang1033\''c0\f0 NG QUANG\b0  : Th\f1\''e0\f0 nh kh\f1\''f4\f0 ng d\f1\''e0\f0 y, kh\f1\''f4\f0 ng s\f3\lang1066\u7887?i\par
\b 7.D\u7882?CH T\f1\lang1033\''da\f0 I C\f1\''d9\f0 NG\b0 :  D\f3\lang1066\u7883?ch \f1\lang1033\''e2\f0 m t\f1\''ed\f0 nh\par

\pard\li238\sb20\sa20\tx480\tx840\tx1080\tx1440\tx1530\tx1620\tx1680\tx1920\tx2160\tx2400\tx2610\tx2880\tx3120\tx3360\tx3600\tx3840\tx4080\tx4320\tx4560\tx4800\tx5160\tx5400\tx5640\tx6000\tx6240\tx6480\tx6840\tx7080\tx7320\tx7560\tx7800\tx8040\b 8.T\f3\lang1066\u7916? CUNG\b0 :\tab\cf2\tab\cf1 - \f1\lang1033 T\f2\u432?\f1  \f0\lang1066 th\f3\u7871? : Ng\f1\lang1033\''e3\f0   \tab\tab\par
\tab\tab\tab\tab\tab\tab - \f2\''d0\f0 KTS : mm\par

\pard\li238\sb20\sa20\tx480\tx840\tx1080\tx1440\tx1530\tx1680\tx1920\tx2160\tx2400\tx2610\tx2880\tx3120\tx3360\tx3600\tx3840\tx4080\tx4320\tx4560\tx4800\tx5160\tx5400\tx5640\tx6000\tx6240\tx6480\tx6840\tx7080\tx7320\tx7560\tx7800\tx8040\tab\tab\tab\tab\tab  - M\f3\lang1066\u7853?t\f1\lang1033  \f2\''f0\f3\lang1066\u7897? : \f2\lang1033\''d0\f3\lang1066\u7891?\f1\lang1033 ng\f3\lang1066  nh\u7845?t\par

\pard\li238\sb20\sa20\tx480\tx840\tx1080\tx1440\tx1530\tx1620\tx1680\tx1920\tx2160\tx2400\tx2610\tx2880\tx3120\tx3360\tx3600\tx3840\tx4080\tx4320\tx4560\tx4800\tx5160\tx5400\tx5640\tx6000\tx6240\tx6480\tx6840\tx7080\tx7320\tx7560\tx7800\tx8040\tab\tab\tab\tab\tab\tab - N\u7897?i m\u7841?c : mm\par

\pard\li238\sb20\sa20\tx480\tx840\tx1080\tx1440\tx1680\tx1920\tx2160\tx2400\tx2610\tx2880\tx3120\tx3360\tx3600\tx3840\tx4080\tx4320\tx4560\tx4800\tx5160\tx5400\tx5640\tx6000\tx6240\tx6480\tx6840\tx7080\tx7320\tx7560\tx7800\tx8040\cf0\par
\cf1\b 9.\f2\lang1033\''d0\f3\lang1066\u7896?\f1\lang1033 NG \f3\lang1066 M\u7840?CH CH\u7910? B\u7908?NG\b0  : \f1\lang1033 Ch\f2\u432?\f1 a \f0\lang1066 ph\f1\lang1033\''e1\f0 t hi\f3\lang1066\u7879?n b\u7845?t\f1\lang1033  th\f2\u432?\f3\lang1066\u7901?\f1\lang1033 ng\f3\lang1066  \par
\b 10.\f1\lang1033 C\f2\u416?\f1  \f0\lang1066 QUAN KH\f1\lang1033\''c1\f0 C\b0  : \f1 Ch\f2\u432?\f1 a \f0 ph\f1\''e1\f0 t hi\f3\lang1066\u7879?n b\u7845?t\f1\lang1033  th\f2\u432?\f3\lang1066\u7901?\f1\lang1033 ng\f3\lang1066\par

\pard\cf0\par
\par
}', N'{\rtf1\ansi\ansicpg1258\deff0\nouicompat\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
{\*\generator Riched20 10.0.22621}\viewkind4\uc1 
\pard\b\f0\fs24\par
}', N'{\rtf1\ansi\ansicpg1258\deff0\nouicompat\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
{\*\generator Riched20 10.0.22621}\viewkind4\uc1 
\pard\b\f0\fs24 HI\u7878?N CH\''ddA PH\''c1T HI\u7878?N B\u7844?T TH\''dd\u7900?NG TR\''caN SI\''caU \''c2M T\u7892?NG QU\''c1T\par
}', N'{\rtf1\ansi\ansicpg1258\deff0\nouicompat\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
{\*\generator Riched20 10.0.22621}\viewkind4\uc1 
\pard\b\f0\fs24\par
}')
INSERT [dbo].[tb_MauSieuAm] ([ID], [STT], [TenMau], [TieuDe], [GioiTinh], [ChuaSuDung], [ChanDoan], [SoHinhInToiDa], [SoPhanMoTa], [KieuIn], [NoiDung1], [NoiDung2], [KetLuan], [DeNghi]) VALUES (78, 10, N'Siêu Âm Tổng Quát Nam', N'SIÊU ÂM TỔNG QUÁT NAM', N'Nam', 0, N'{\rtf1\ansi\ansicpg1258\deff0\nouicompat\deflang1066{\fonttbl{\f0\fnil\fcharset0 Times New Roman;}{\f1\fnil\fcharset163 Times New Roman;}}
{\*\generator Riched20 10.0.22621}\viewkind4\uc1 
\pard\b\f0\fs24\lang1033 Ki\f1\lang1066\u7875?m tra t\u7893?ng qu\''e1t\par
}', 3, 1, N'Ngang', N'{\rtf1\ansi\ansicpg1252\deff0\nouicompat{\fonttbl{\f0\fnil Times New Roman;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\fnil\fcharset238 Times New Roman;}{\f3\fnil\fcharset163 Times New Roman;}{\f4\fswiss\fcharset238 Arial;}}
{\colortbl ;\red0\green0\blue0;\red0\green0\blue255;}
{\*\generator Riched20 10.0.22621}\viewkind4\uc1 
\pard\li284\sb40\sa40\tx567\tx851\tx1134\tx1418\tx1701\tx1985\tx2268\tx2552\tx2835\tx3119\tx3402\tx3686\tx3969\tx4253\tx4536\tx4820\tx5103\tx5387\tx5670\tx5954\tx6237\tx6521\tx6804\tx7088\tx7371\tx7655\tx7938\tx8222\tx8505\tx8789\tx9072\cf1\b\f0\fs24\lang1066 GAN:\tab\b0  - K\f1\lang1033\''ed\f0 ch\f1  th\f2\u432?\f3\lang1066\u7899?\f1\lang1033 c\f3\lang1066 : \tab Kh\f1\lang1033\''f4\f0 ng to\par
\tab\tab\tab  - Nhu m\f1\''f4\f0 :\tab\f2\''d0\f3\lang1066\u7891?\f1\lang1033 ng \f3\lang1066 nh\u7845?t b\u7901? \f4\''f0\f3\u7873?u\par
\tab\tab\tab  - M\u7841?ch m\f1\lang1033\''e1\f0 u:\tab B\f1\''ec\f0 nh\f1  th\f2\u432?\f3\lang1066\u7901?\f1\lang1033 ng\f3\lang1066\par
\par

\pard\li284\ri1836\sb40\sa40\tx567\tx851\tx1134\tx1418\tx1701\tx1985\tx2268\tx2552\tx2835\tx3119\tx3402\tx3686\tx3969\tx4253\tx4536\tx4820\tx5103\tx5387\tx5670\tx5954\tx6237\tx6521\tx6804\tx7088\tx7371\tx7655\tx7938\tx8222\tx8505\tx8789\tx9072\b M\u7852?T:\b0\tab - \f2\lang1033\''d0\u432?\f3\lang1066\u7901?\f1\lang1033 ng \f3\lang1066 m\u7853?t trong gan: Kh\f1\lang1033\''f4\f0 ng d\f1\''e3\f0 n\par

\pard\li284\sb40\sa40\tx567\tx851\tx1134\tx1418\tx1701\tx1985\tx2268\tx2552\tx2835\tx3119\tx3402\tx3686\tx3969\tx4253\tx4536\tx4820\tx5103\tx5387\tx5670\tx5954\tx6237\tx6521\tx6804\tx7088\tx7371\tx7655\tx7938\tx8222\tx8505\tx8789\tx9072\tab\tab\tab - \f3\lang1066\u7888?ng m\u7853?t ch\u7911?:  Kh\f1\lang1033\''f4\f0 ng d\f1\''e3\f0 n, kh\f1\''f4\f0 ng s\f3\lang1066\u7887?i\par
\tab  \tab\tab - T\f1\lang1033\''fa\f0 i m\f3\lang1066\u7853?t:  Th\f1\lang1033\''e0\f0 nh kh\f1\''f4\f0 ng d\f1\''e0\f0 y, kh\f1\''f4\f0 ng s\f3\lang1066\u7887?i \par
\par
\b T\u7908?Y:\b0\tab  - B\f1\lang1033\''ec\f0 nh\f1  th\f2\u432?\f3\lang1066\u7901?\f1\lang1033 ng\f3\lang1066\tab\par
\b L\f1\lang1033\''c1\f0 CH:\b0\tab  - Kh\f1\''f4\f0 ng to\par
\b TH\f3\lang1066\u7852?N:\tab\b0  - Tr\f1\lang1033\''e1\f0 i : Kh\f1\''f4\f0 ng s\f3\lang1066\u7887?i, kh\f1\lang1033\''f4\f0 ng \f3\lang1066\u7913?\f1\lang1033  n\f2\u432?\f3\lang1066\u7899?\f1\lang1033 c\f3\lang1066  \par
\tab  \tab\tab  - Ph\u7843?i : Kh\f1\lang1033\''f4\f0 ng s\f3\lang1066\u7887?i, kh\f1\lang1033\''f4\f0 ng \f3\lang1066\u7913?\f1\lang1033  n\f2\u432?\f3\lang1066\u7899?\f1\lang1033 c\f3\lang1066\par
\par
\b B\f1\lang1033\''c0\f0 NG QUANG:\b0  Th\f1\''e0\f0 nh kh\f1\''f4\f0 ng d\f1\''e0\f0 y, kh\f1\''f4\f0 ng s\f3\lang1066\u7887?i\par
\b TI\u7872?N LI\u7878?T TUY\u7870?N\cf2 :\b0  \cf1 Kh\f1\lang1033\''f4\f0 ng to\par
\b\f2\''d0\f3\lang1066\u7896?\f1\lang1033 NG \f3\lang1066 M\u7840?CH CH\u7910? B\u7908?NG:\b0  B\f1\lang1033\''ec\f0 nh\f1  th\f2\u432?\f3\lang1066\u7901?\f1\lang1033 ng\f3\lang1066\par
\b\f1\lang1033 C\f2\u416?\f1  \f0\lang1066 QUAN KH\f1\lang1033\''c1\f0 C:\b0  \f1 Ch\f2\u432?\f1 a \f0 ph\f1\''e1\f0 t hi\f3\lang1066\u7879?n g\f1\lang1033\''ec\f0  l\f3\lang1066\u7841?\cf0\par

\pard\sb60\sa60\qj\fs20\par

\pard\fs24\par
}', N'{\rtf1\ansi\ansicpg1258\deff0\nouicompat\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
{\*\generator Riched20 10.0.22621}\viewkind4\uc1 
\pard\b\f0\fs24\par
}', N'{\rtf1\ansi\ansicpg1258\deff0\nouicompat\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
{\*\generator Riched20 10.0.22621}\viewkind4\uc1 
\pard\b\f0\fs24 HI\u7878?N CH\''ddA PH\''c1T HI\u7878?N B\u7844?T TH\''dd\u7900?NG TR\''caN SI\''caU \''c2M T\u7892?NG QU\''c1T\par
}', N'{\rtf1\ansi\ansicpg1258\deff0\nouicompat\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
{\*\generator Riched20 10.0.22621}\viewkind4\uc1 
\pard\b\f0\fs24\par
}')
INSERT [dbo].[tb_MauSieuAm] ([ID], [STT], [TenMau], [TieuDe], [GioiTinh], [ChuaSuDung], [ChanDoan], [SoHinhInToiDa], [SoPhanMoTa], [KieuIn], [NoiDung1], [NoiDung2], [KetLuan], [DeNghi]) VALUES (79, 2, N'Siêu âm 4D (in dọc)', N'SIÊU ÂM 4D KHẢO SÁT HÌNH THÁI', N'Nữ', 0, N'{\rtf1\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
\viewkind4\uc1\pard\b\f0\fs24\par
}', 6, 1, N'Dọc', N'{\rtf1\fbidis\ansi\ansicpg1250\deff0{\fonttbl{\f0\froman\fprq2\fcharset0 Times New Roman;}{\f1\froman\fprq2\fcharset163 Times New Roman;}{\f2\froman\fprq2\fcharset238{\*\fname Times New Roman;}Times New Roman CE;}{\f3\fnil Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\ltrpar\fi357\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540\lang1066\b\f0\fs24 S\u7889? \lang1033\f1 l\''fd\lang1066\f0\u7907?\lang1033 ng \lang1066 thai\b0 : 01 thai; \tab Tim thai: \tab l\u7847?n/ ph\lang1033\''fat;\par
\b C\''e1c s\lang1066\u7889? \f1\''f0\f0 o:\b0  \tab BPD:  mm; \tab\tab HC:  mm; \tab\tab FL :   mm;\par
\tab\tab\tab\tab\tab TAD:  mm; \tab\tab AP\lang1033 T\lang1066 D:  mm; \tab AC :  mm.\par
\b C\lang1033\''e2n n\lang1066\u7863?ng\b0 : \tab gram t\f1\''fd\''f5\f0 ng \u7913?ng BPV \par
\pard\ltrpar\fi357\sb120\sa20\qc\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540\b\fs28 KH\u7842?O S\lang1033\''c1T H\''ccNH TH\''c1I\par
\pard\ltrpar\fi357\sb20\sa20\qc\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540\b0\fs24 Si\''eau \''e2m ch\lang1066\u7881? l\lang1033\''e0 m\lang1066\u7897?t kh\lang1033\''e1m nghi\lang1066\u7879?m l\lang1033\''e2m s\''e0ng, si\''eau \''e2m kh\''f4ng th\lang1066\u7875? ph\lang1033\''e1t hi\lang1066\u7879?n t\u7845?t c\u7843? c\lang1033\''e1c d\lang1066\u7883? t\u7853?t thai nhi.\par
\pard\ltrpar\fi360\sb20\sa20\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540\b 1.\tab S\u7884? - N\lang1033\''c3O:\b0\par
\pard\ltrpar\li645\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540 - H\''ecnh d\lang1066\u7841?ng h\u7897?p s\u7885?: B\lang1033\''ecnh th\f1\''fd\lang1066\f0\u7901?\lang1033 ng\lang1066 ;             \lang1033\f1\''d0\''fd\lang1066\f0\u7901?\lang1033 ng \lang1066 gi\u7919?a: Kh\lang1033\''f4ng l\lang1066\u7879?ch;\par
- H\lang1033\''ecnh d\lang1066\u7841?ng  n\lang1033\''e3o th\lang1066\u7845?t: B\lang1033\''ecnh th\f1\''fd\lang1066\f0\u7901?\lang1033 ng\lang1066 ;          V\lang1033\''e1ch trong su\lang1066\u7889?t: B\lang1033\''ecnh th\f1\''fd\lang1066\f0\u7901?\lang1033 ng\lang1066 ;\par
- N\lang1033\''e3o th\lang1066\u7845?t b\lang1033\''ean (Latvent): mm; \tab\tab\tab H\lang1066\u7889? sau(CM): mm; \tab Ti\u7875?u n\lang1033\''e3o: mm;\par
\pard\ltrpar\fi360\sb20\sa20\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540\b 2.\tab N\lang1066\u7870?P G\lang1033\''c1Y (NF)\b0 : mm\par
\b 3.\tab M\lang1066\u7854?T:\b0  \par
\pard\ltrpar\li645\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540 - Kho\u7843?ng c\lang1033\''e1ch 02 h\lang1066\u7889?c m\u7855?t: mm; \tab H\lang1033\''ecnh \lang1066\u7843?nh 02 lens: \tab Nh\lang1033\''ecn r\''f5;\par
- V\''e0nh m\''f4i tr\''ean: li\''ean t\lang1066\u7909?c; \tab\tab\tab Chi\u7873?u d\lang1033\f1\''e0i x\''fd\''f5ng m\u361?i: mm;\par
\pard\ltrpar\fi360\sb20\sa20\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540\b\f0 4.\tab NG\lang1066\u7920?C:\b0  \i (Kh\u7843?o s\lang1033\''e1t tr\''ean 05 m\lang1066\u7863?t c\u7855?t: 4CV - RVOT - LVOT - 3VV - AORTA)\i0\par
\pard\ltrpar\li645\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540 - Tim: B\u7889?n bu\u7891?ng tim: C\lang1033\''e2n x\lang1066\u7913?ng. \tab V\u7883? tr\lang1033\''ed, k\''edch th\f1\''fd\lang1066\f0\u7899?c, tr\u7909?c tim: B\lang1033\''ecnh th\f1\''fd\lang1066\f0\u7901?\lang1033 ng\lang1066 .\par
- Crux, v\lang1033\''e1ch li\''ean th\lang1066\u7845?t: \lang1033\f1 Ch\''fda \lang1066\f0 th\u7845?y b\u7845?t\lang1033\f1  th\''fd\lang1066\f0\u7901?\lang1033 ng\lang1066 . \lang1033\f1 C\''f5 \lang1066\f0 t\lang1033\''e2m th\lang1066\u7845?t co b\lang1033\''f3p: B\''ecnh th\f1\''fd\lang1066\f0\u7901?\lang1033 ng\lang1066 .\par
- Hai \lang1033\f2\''f0\lang1066\f0\u7897?\lang1033 ng\lang1066  m\u7841?ch v\lang1033\''e0o ph\lang1066\u7893?i: B\lang1033\''ecnh th\f1\''fd\lang1066\f0\u7901?\lang1033 ng\lang1066 .\par
\pard\ltrpar\lang1033            \lang1066 - Ph\u7893?i: M\u7853?t \f1\''f0\f0\u7897? echo: B\lang1033\''ecnh th\f1\''fd\lang1066\f0\u7901?\lang1033 ng\lang1066 . \lang1033\f1\''d0\''fd\lang1066\f0\u7901?\lang1033\f1 ng c\''f5 \lang1066\f0 ho\lang1033\''e0nh: r\''f5\par
\pard\ltrpar\fi360\sb20\sa20\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540\b 5.\tab C\lang1066\u7896?T S\u7888?NG:\b0  H\lang1033\''ecnh d\lang1066\u7841?ng c\u7897?t s\u7889?ng: B\lang1033\''ecnh th\f1\''fd\lang1066\f0\u7901?ng\par
\b 6.\tab B\u7908?NG:\b0  \par
\pard\ltrpar\li645\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540 - Th\lang1033\''e0nh b\lang1066\u7909?ng tr\f1\''fd\f0\u7899?c: Li\lang1033\''ean t\lang1066\u7909?c; \tab V\u7883? tr\lang1033\''ed, k\''edch th\f1\''fd\lang1066\f0\u7899?c d\u7841? d\lang1033\''e0y: B\''ecnh th\f1\''fd\lang1066\f0\u7901?ng\par
- H\lang1033\''ecnh \lang1066\u7843?nh gan, t\lang1033\''fai m\lang1066\u7853?t: B\lang1033\''ecnh th\f1\''fd\lang1066\f0\u7901?ng\lang1033 .\par
\pard\ltrpar\fi360\sb20\sa20\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540\lang1066\b 7.\tab H\u7878? NI\u7878?U:\b0  \lang1033\par
\pard\ltrpar\li645\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540 - \lang1066 H\''ecnh d\u7841?ng 02 th\u7853?n\lang1033 : B\''ecnh th\lang1066\f1\''fd\f0\u7901?ng\lang1033\par
- \lang1066\f1 K\''edch th\''fd\f0\u7899?c b\''e0ng quang\lang1033 : B\''ecnh th\lang1066\f1\''fd\f0\u7901?ng\par
\pard\ltrpar\fi360\sb20\sa20\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540\b 8.\tab T\u7912? CHI:\lang1033\b0  Quan s\''e1t r\''f5 t\lang1066\u7913? chi, m\u7895?\f1 i chi 03 \''f0o\f0\u7841?n c\''e2n x\u7913?ng.\par
\b 9.\tab NHAU THAI:\b0  B\''e1m m\u7863?\f1 t tr\''fd\f0\u7899?\f1 c, nh\''f3m 1. \''d0\f0\u7897?\f1  tr\''fd\f0\u7903?\f1 ng th\''e0nh: \''d0\f0\u7897? I. D\''e2y r\u7889?n c\''f3 03 m\u7841?ch m\''e1u.\par
\b\f1 10.\tab L\''dd\f0\u7906?\f1 NG N\''dd\f0\u7898?C \u7888?I:\lang1033\b0  B\''ecnh th\lang1066\f1\''fd\f0\u7901?ng\par
\b 11. GHI NH\u7852?N KH\''c1C:\b0\f1  Ch\''fda ph\''e1t hi\f0\u7879?n b\u7845?\f1 t th\''fd\f0\u7901?ng \par
\pard\ltrpar\sa160\sl252\slmult1\lang1033\fs22\par
\pard\ltrpar\cf1\lang1066\b\f3\fs24\par
}', N'{\rtf1\ansi\ansicpg1252\deff0{\fonttbl{\f0\fnil Times New Roman;}{\f1\fnil\fcharset163 Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\fswiss\fcharset238{\*\fname Arial;}Arial CE;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue0;}
\viewkind4\uc1\pard\fi360\sb20\sa20\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540\cf1\lang1066\b\f0\fs24 7.\tab H\f1\u7878? NI\u7878?U:\cf2\b0  \par
\pard\li645\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540 - H\lang1033\f2\''ec\f0 nh d\lang1066\f1\u7841?ng 02 th\u7853?n: B\lang1033\f2\''ec\f0 nh th\f3\u432?\lang1066\f1\u7901?ng\par
- K\lang1033\f2\''ed\f0 ch th\f3\u432?\lang1066\f1\u7899?c b\lang1033\f2\''e0\f0 ng quang: B\f2\''ec\f0 nh th\f3\u432?\lang1066\f1\u7901?ng\par
\pard\fi360\sb20\sa20\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540\cf1\b 8.\tab T\u7912? CHI:\cf2\b0  Quan s\lang1033\f2\''e1\f0 t r\f2\''f5\f0  t\lang1066\f1\u7913? chi, m\u7895?i chi 03 \f3\''f0\f0 o\f1\u7841?n c\lang1033\f2\''e2\f0 n x\lang1066\f1\u7913?ng.\par
\cf1\b 9.\tab NHAU THAI:\cf2\b0  B\lang1033\f2\''e1\f0 m m\lang1066\f1\u7863?t tr\f3\u432?\f1\u7899?c, nh\lang1033\f2\''f3\f0 m 1. \f3\''d0\lang1066\f1\u7897? tr\f3\u432?\f1\u7903?ng th\lang1033\f2\''e0\f0 nh: \f3\''d0\lang1066\f1\u7897? I. D\lang1033\f2\''e2\f0 y r\lang1066\f1\u7889?n c\lang1033\f2\''f3\f0  03 m\lang1066\f1\u7841?ch m\lang1033\f2\''e1\f0 u.\par
\cf1\b 10.\tab L\f3\u431?\lang1066\f1\u7906?NG N\f3\u431?\f1\u7898?C \u7888?I:\cf2\b0  B\lang1033\f2\''ec\f0 nh th\f3\u432?\lang1066\f1\u7901?ng\par
\cf1\b 11. GHI NH\u7852?N KH\lang1033\f2\''c1\f0 C:\cf2\b0  Ch\f3\u432?\f0 a ph\f2\''e1\f0 t hi\lang1066\f1\u7879?n b\u7845?t th\f3\u432?\f1\u7901?ng \par
\pard\cf0\par
}', N'{\rtf1\ansi\ansicpg1252\deff0{\fonttbl{\f0\fnil Times New Roman;}{\f1\fnil\fcharset163 Times New Roman;}{\f2\fnil\fcharset0 Times New Roman;}{\f3\fswiss\fcharset238{\*\fname Arial;}Arial CE;}}
{\colortbl ;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang1066\f0\fs24 01 THAI S\f1\u7888?NG C\lang1033\f2\''c2\f0 N N\lang1066\f1\u7862?NG  KHO\u7842?NG ... GRAM T\f3\u431?\u416?\f0 NG \f1\u7912?NG V\u7898?I BVP C\u7910?A THAI ... TU\u7846?N. HI\u7878?N T\u7840?I CH\f3\u431?\f0 A PH\lang1033\f2\''c1\f0 T HI\lang1066\f1\u7878?N B\u7844?T TH\f3\u431?\f1\u7900?NG V\u7872? H\lang1033\f2\''cc\f0 NH TH\f2\''c1\f0 I H\lang1066\f1\u7884?C TR\lang1033\f2\''ca\f0 N SI\f2\''ca\f0 U \f2\''c2\f0 M.\cf0\par
}', N'{\rtf1\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
\viewkind4\uc1\pard\b\f0\fs24\par
}')
INSERT [dbo].[tb_MauSieuAm] ([ID], [STT], [TenMau], [TieuDe], [GioiTinh], [ChuaSuDung], [ChanDoan], [SoHinhInToiDa], [SoPhanMoTa], [KieuIn], [NoiDung1], [NoiDung2], [KetLuan], [DeNghi]) VALUES (81, 1, N'Siêu âm tim', N'SIÊU ÂM TIM', N'Chung', 0, N'{\rtf1\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
\viewkind4\uc1\pard\b\f0\fs24\par
}', 4, 1, N'Dọc', N'{\rtf1\fbidis\ansi\ansicpg1252\deff0{\fonttbl{\f0\froman\fprq2\fcharset0 Times New Roman;}{\f1\froman\fprq2\fcharset163 Times New Roman;}}
\viewkind4\uc1\pard\ltrpar\li142\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\lang1066\ul\b\f0\fs24 I.TM:\par
\ulnone\b0 V\''e1ch li\''ean TTr:\tab\tab mm\tab\tab\tab\tab Th\u7845?t ph\u7843?i:\tab\tab\tab\tab mm\par
Th\u7845?t tr\''e1i TTr:\tab\tab mm\tab\tab\tab\tab T.Th\u7845?t P TTr:\tab\tab mm\par
Ts th\u7845?t T TTr:\tab\tab mm\tab\tab\tab\tab T.Th\u7845?t P TT:\tab\tab\tab mm\par
\f1 V\''e1ch li\''ean TT:\tab\tab\tab mm\tab\tab\tab\tab\''d0MC g\f0\u7889?c:\tab\tab\tab\tab mm\par
Th\u7845?t Tr\''e1i TT:\tab\tab\tab mm\tab\tab\tab\tab Nh\u297? Tr\''e1i:\tab\tab\tab\tab mm\par
Ts.th\u7845?\f1 t(T) TT:\tab\tab mm\tab\tab\tab\tab B.\''f0\f0\u7897? m\u7903?\f1  \''d0MC:\tab\tab mm\f0\par
\f1 EF\tab\tab\tab\tab\tab :\tab\tab %\tab\tab\tab\tab\tab KL c\''f5 th\f0\u7845?t T:\tab\tab\tab g/m\super 2\par
\nosupersub FR\tab\tab\tab\tab :\tab\tab %\tab\tab\tab\tab\tab C/s\u7889? KLC th\u7845?t T:\tab g/m\super 2\par
\ul\nosupersub\b II.DOPPLER\par
\pard\ltrpar\li426\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\ulnone 1/ D\''f2ng 2 l\''e1:\par
\b0 Vmax:\tab\tab m/s\tab\tab GdPmax:\tab\tab mmHg\tab GdPmoy:\tab\tab mmHg\par
H\u7903? 2 l\''e1:(+)\tab\tab\tab PHT:\tab\tab ms \tab\b\par
\pard\ltrpar\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\b0\tab H\u7865?p 2 l\''e1:(-)\tab\tab\tab SM:\tab\tab cm\super 2\nosupersub\par
\pard\ltrpar\li426\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\b 2/ D\''f2ng ch\u7911?:\par
\b0 Vmax:\tab\tab m/s\tab\tab GdPmax:\tab\tab mmHg\tab GdPmoy:\tab\tab mmHg\par
H\u7903? ch\u7911?:(+)\tab\tab\tab PHT:\tab\tab ms\tab\tab d=\tab mm\tab EDTD:\tab\tab m/s\b\par
\pard\ltrpar\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\b0\tab H\u7865?p ch\u7911?:(-)\tab\tab\tab SA:\tab\tab cm\super 2\nosupersub\f1\tab\tab\''d0\f0\u7897? d\''e0i:\par
\pard\ltrpar\li426\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\b 3/ D\''f2ng 3 l\''e1:\b0\tab\tab\par
Vmax:\tab\tab m/s\tab\tab GdPmax:\tab\tab mmHg\tab GdPmoy:\tab\tab mmHg\par
\pard\ltrpar\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\tab H\u7903? 3 l\''e1:(+)\tab\tab\tab PAPs:\tab\tab mmHg\par
\pard\ltrpar\li426\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\b 4/ D\''f2ng ph\u7893?i:\tab\b0\par
Vmax:\tab\tab m/s\tab\tab GdPmax:\tab\tab mmHg\tab GdPmoy:\tab\tab mmHg\par
H\u7903? ph\u7893?i:(+)\tab\tab\tab PAPmoy:\tab\tab mmHg\tab PAP diast:\tab\tab mmHg \b\par
\pard\ltrpar\li142\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\ul III.NH\u7852?N X\''c9T:\par
\lang1033\ulnone\b0 C\lang1066\''e1\lang1033 c th\lang1066\''e0\lang1033 nh tim kh\lang1066\''f4\lang1033 ng \lang1066 d\''e0y\lang1033 . C\lang1066\''e1\lang1033 c bu\u7891?ng tim kh\lang1066\''f4\lang1033 ng d\lang1066\''e3\lang1033 n\lang1066 .\par
Ch\u7913?\f1 c n\''e3ng t\''e2m thu th\f0\u7845?t tr\''e1i gi\u7843?m EF=\tab\tab %.\par
H\u7903? van 2 l\''e1:\tab /4.\par
H\u7903? van 3 l\''e1:\tab /4.\par
\f1 Kh\''f4ng t\''e3ng \''e1p \''f0\f0\u7897?ng m\u7841?ch ph\u7893?i PAPs =\tab\tab mmHg.\par
Kh\''f4ng tr\''e0n d\u7883?ch m\''e0ng ngo\''e0i tim.\par
\pard\ltrpar\par
\pard\ltrpar\sa160\sl252\slmult1\lang1033\fs22\par
\pard\ltrpar\lang1066\ul\b\fs24\par
}', N'{\rtf1\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
\viewkind4\uc1\pard\b\f0\fs24\par
}', N'{\rtf1\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\fnil\fcharset163 Microsoft Sans Serif;}{\f1\fnil\fcharset0 Microsoft Sans Serif;}{\f2\fnil\fcharset163 Times New Roman;}}
\viewkind4\uc1\pard\f0\fs24 HI\f1\u7878?N T\u7840?I KH\''d4NG PH\''c1T HI\u7878?N B\u7844?T TH\f0\''dd\f1\u7900?NG TR\''caN SI\''caU \''c2M TIM\b\f2\par
}', N'{\rtf1\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
\viewkind4\uc1\pard\b\f0\fs24\par
}')
INSERT [dbo].[tb_MauSieuAm] ([ID], [STT], [TenMau], [TieuDe], [GioiTinh], [ChuaSuDung], [ChanDoan], [SoHinhInToiDa], [SoPhanMoTa], [KieuIn], [NoiDung1], [NoiDung2], [KetLuan], [DeNghi]) VALUES (82, 3, N'Siêu âm song thai', N'SIÊU ÂM SONG THAI', N'Nữ', 0, N'{\rtf1\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
\viewkind4\uc1\pard\b\f0\fs24\par
}', 4, 1, N'Dọc', N'{\rtf1\fbidis\ansi\ansicpg1250\deff0{\fonttbl{\f0\froman\fprq2\fcharset0 Times New Roman;}{\f1\froman\fprq2\fcharset163 Times New Roman;}{\f2\froman\fprq2\fcharset238{\*\fname Times New Roman;}Times New Roman CE;}{\f3\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue0;}
\viewkind4\uc1\pard\ltrpar\li142\sb20\sa20\tx284\tx567\tx851\tx1134\tx1418\tx1701\tx1985\tx2268\tx2552\tx2835\tx3119\tx3402\tx3686\tx3969\tx4253\tx4536\tx4820\tx5103\tx5387\tx5670\tx5954\tx6237\tx6521\tx6804\tx7088\tx7371\tx7655\tx7938\tx8222\tx8505\tx8789\tx9072\lang1066\b\f0\fs24 S\u7889?\lang1033\f1  l\''fd\lang1066\f0\u7907?\lang1033 ng\lang1066  thai\b0 : \b 02 \b0                                       \b C\u7917? \f1\''f0\f0\u7897?ng thai\b0 : (+)\tab  \tab\par
 \b 1.C\lang1033\''c1C S\lang1066\u7888? \f1\''d0\f0 O: \par
\pard\ltrpar\li142\sb20\sa20\tx284\tx567\tx851\tx1134\tx1418\tx1701\tx1985\tx2268\tx2835\tx2880\tx3119\tx3402\tx3686\tx3969\tx4253\tx4320\tx4536\tx4820\tx5103\tx5387\tx5670\tx5954\tx6237\tx6521\tx6804\tx7088\tx7371\tx7655\tx7938\tx8222\tx8505\tx8789         THAI 01 :\b0\tab\par
\b         Tim thai\b0 :     nh\u7883?p/ph\lang1033\''fat\tab\tab  \b Ng\''f4i thai\b0 : \tab\tab\par
\pard\ltrpar\fi540\li142\sb20\sa20\tx284\tx567\tx851\tx1134\tx1418\tx1701\tx1985\tx2268\tx2835\tx2880\tx3119\tx3402\tx3686\tx3969\tx4253\tx4320\tx4536\tx4820\tx5103\tx5387\tx5670\tx5954\tx6237\tx6521\tx6804\tx7088\tx7371\tx7655\tx7938\tx8222\tx8505\tx8789\f1\''d0\''fd\lang1066\f0\u7901?\lang1033 ng \lang1066 k\lang1033\f1\''ednh l\''fd\lang1066\f0\u7905?\lang1033\f2 ng \''f0\lang1066\f0\u7881?\lang1033 nh\lang1066  (BPD)  :   mm; HC : mm\par
Chi\u7873?u d\lang1033\f1\''e0i x\''fd\''f5ng \''f0\''f9i (FL) :    mm\par
\''d0\''fd\lang1066\f0\u7901?\lang1033 ng \lang1066 k\lang1033\f1\''ednh tr\''fd\lang1066\f0\u7899?\lang1033 c\lang1066  sau b\u7909?ng (APTD) :   mm\par
\lang1033\f1\''d0\''fd\lang1066\f0\u7901?\lang1033 ng \lang1066 k\lang1033\''ednh ngang b\lang1066\u7909?ng (TTD) :  mm; AC : mm\par
Tu\u7893?i thai :    tu\u7847?n  \par
C\lang1033\''e2n n\lang1066\u7863?ng thai :    g\par
\b THAI 02 :\par
Tim thai\b0 :     nh\u7883?p/ph\lang1033\''fat\tab\tab  \b Ng\''f4i thai\b0 : \tab\tab\fs20\par
\fs24 BPD  :   mm     ;  HC :      mm    ;      FL :    mm\par
APTD :             ;  TTD :  mm      ;  AC : mm\par
Tu\lang1066\u7893?i thai :    tu\u7847?n  \par
C\lang1033\''e2n n\lang1066\u7863?ng thai :    g\par
\pard\ltrpar\li142\sb20\sa20\tx284\tx567\tx851\tx1134\tx1418\tx1701\tx1985\tx2268\tx2835\tx2880\tx3119\tx3402\tx3686\tx3969\tx4253\tx4320\tx4536\tx4820\tx5103\tx5387\tx5670\tx5954\tx6237\tx6521\tx6804\tx7088\tx7371\tx7655\tx7938\tx8222\tx8505\tx8789\b 2.T\lang1033\''ccNH TR\lang1066\u7840?NG B\lang1033\''c1NH NHAU :\b0\par
\pard\ltrpar\fi540\li142\sb20\sa20\tx284\tx567\tx851\tx1134\tx1418\tx1701\tx1985\tx2268\tx2835\tx2880\tx3119\tx3402\tx3686\tx3969\tx4253\tx4536\tx4820\tx5103\tx5387\tx5670\tx5954\tx6237\tx6521\tx6804\tx7088\tx7371\tx7655\tx7938\tx8222\tx8505\tx8789\tx9072 V\lang1066\u7883? tr\lang1033\''ed nhau : m\lang1066\u7863?t\lang1033\f1  tr\''fd\lang1066\f0\u7899?\lang1033 c\lang1066\tab\tab\tab\par
\f1\''d0\f0\u7897?\lang1033\f1  tr\''fd\lang1066\f0\u7903?\lang1033 ng\lang1066  th\lang1033\''e0nh:  \f2\''f0\lang1066\f0\u7897? I\par
\pard\ltrpar\li142\sb20\sa20\tx284\tx567\tx851\tx1134\tx1418\tx1701\tx1985\tx2268\tx2835\tx2880\tx3119\tx3402\tx3686\tx3969\tx4253\tx4320\tx4536\tx4820\tx5103\tx5387\tx5670\tx5954\tx6237\tx6521\tx6804\tx7088\tx7371\tx7655\tx7938\tx8222\tx8505\tx8789\b 3.T\lang1033\''ccNH TR\lang1066\u7840?NG \u7888?I :\par
\pard\ltrpar\fi540\li142\sb20\sa20\tx284\tx567\tx851\tx1134\tx1418\tx1701\tx1985\tx2268\tx2835\tx2880\tx3119\tx3402\tx3686\tx3969\tx4253\tx4320\tx4536\tx4820\tx5103\tx5387\tx5670\tx5954\tx6237\tx6521\tx6804\tx7088\tx7371\tx7655\tx7938\tx8222\tx8505\tx8789\lang1033\b0\f1 L\''fd\lang1066\f0\u7907?\lang1033\f1 ng n\''fd\lang1066\f0\u7899?\lang1033 c \lang1066\u7889?i: trung b\lang1033\''ecnh\par
\pard\ltrpar\li142\sb20\sa20\tx284\tx567\tx851\tx1134\tx1418\tx1701\tx1985\tx2268\tx2835\tx2880\tx3119\tx3402\tx3686\tx3969\tx4253\tx4320\tx4536\tx4820\tx5103\tx5387\tx5670\tx5954\tx6237\tx6521\tx6804\tx7088\tx7371\tx7655\tx7938\tx8222\tx8505\tx8789          T\''ednh ch\lang1066\u7845?t \u7889?i: B\lang1033\''ecnh th\f1\''fd\lang1066\f0\u7901?\lang1033 ng\lang1066\b\par
4.GHI NH\u7852?N KH\lang1033\''c1C : \b0\f1 Ch\''fda ph\''e1t hi\lang1066\f0\u7879?n b\u7845?t\lang1033\f1  th\''fd\lang1066\f0\u7901?\lang1033 ng\lang1066\par
\pard\ltrpar\par
\pard\ltrpar\sa160\sl252\slmult1\lang1033\fs22\par
\pard\ltrpar\cf1\lang1066\b\f3\fs24\par
}', N'{\rtf1\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
\viewkind4\uc1\pard\b\f0\fs24\par
}', N'{\rtf1\ansi\ansicpg1250\deff0{\fonttbl{\f0\fnil Times New Roman;}{\f1\fnil\fcharset163 Times New Roman;}{\f2\fswiss\fcharset238{\*\fname Arial;}Arial CE;}{\f3\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang1066\f0\fs24 02 THAI S\f1\u7888?NG \f2\''d0\f0 ANG PH\lang1033\f3\''c1\f0 T TRI\lang1066\f1\u7874?N TRONG T\u7916? CUNG KHO\u7842?NG ... TU\u7846?N - NG\lang1033\f3\''d4\f0 I .\cf0\par
}', N'{\rtf1\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
\viewkind4\uc1\pard\b\f0\fs24\par
}')
INSERT [dbo].[tb_MauSieuAm] ([ID], [STT], [TenMau], [TieuDe], [GioiTinh], [ChuaSuDung], [ChanDoan], [SoHinhInToiDa], [SoPhanMoTa], [KieuIn], [NoiDung1], [NoiDung2], [KetLuan], [DeNghi]) VALUES (83, 4, N'Siêu âm thai nhỏ', N'SIÊU ÂM THAI NHỎ', N'Nữ', 0, N'{\rtf1\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
\viewkind4\uc1\pard\b\f0\fs24\par
}', 4, 1, N'Ngang', N'{\rtf1\fbidis\ansi\ansicpg1250\deff0{\fonttbl{\f0\froman\fprq2\fcharset0 Times New Roman;}{\f1\froman\fprq2\fcharset163 Times New Roman;}{\f2\froman\fprq2\fcharset238{\*\fname Times New Roman;}Times New Roman CE;}{\f3\fswiss\fprq2\fcharset0 Calibri;}{\f4\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\ltrpar\li142\sb20\sa20\tx284\tx567\tx851\tx1134\tx1418\tx1701\tx1985\tx2268\tx2552\tx2835\tx3119\tx3402\tx3686\tx3969\tx4253\tx4536\tx4820\tx5103\tx5387\tx5670\tx5954\tx6237\tx6521\tx6804\tx7088\tx7371\tx7655\tx7938\tx8222\tx8505\lang1066\ul\b\f0\fs24 1/ T\u7916? CUNG \ulnone\b0\fs18 :\par
\fs24                \lang1033 T\f1\''fd\f0  \lang1066 th\u7871? : Ng\lang1033\''e3 tr\f1\''fd\lang1066\f0\u7899?\lang1033 c\lang1066  \par
               DAP:   mm\par
               C\u7845?u tr\lang1033\''fac c\f1\''f5\f2  : \''d0\lang1066\f0\u7891?\lang1033 ng \lang1066 nh\u7845?t \par
               NMTC :   mm\par
               L\lang1033\''f2ng t\lang1066\u7917? cung : C\lang1033\''f3 01 t\''fai thai \par
                                       yolksac (+) , GS = mm\par
                                      c\''f3 ph\''f4i , tim thai (+) \par
                                       CRL =  mm \par
              \par
\ul\b 2/ PH\lang1066\u7846?N PH\u7908? :\ulnone\b0\par
             Bu\u7891?ng tr\u7913?ng (p) : KT = 22 x 18 mm \par
             Bu\u7891?ng tr\u7913?ng (T) : KT = 20 X 16 mm \par
\par
\ul\b 3/ D\u7882?CH T\lang1033\''daI C\''d9NG \ulnone\b0 : (-)\par
\par
\ul\b 4/ GHI NH\lang1066\u7852?N KH\lang1033\''c1C \ulnone\b0 : Ch\f1\''fd\f0 a ph\''e1t hi\lang1066\u7879?n b\u7845?t\lang1033  th\f1\''fd\lang1066\f0\u7901?\lang1033 ng\lang1066\par
\ul\b\par
\pard\ltrpar\ulnone\b0\par
\pard\ltrpar\sa160\sl252\slmult1\lang1033\f3\fs22\par
\pard\ltrpar\cf1\lang1066\ul\b\f4\fs24\par
}', N'{\rtf1\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
\viewkind4\uc1\pard\b\f0\fs24\par
}', N'{\rtf1\ansi\ansicpg1252\deff0{\fonttbl{\f0\fnil Times New Roman;}{\f1\fnil\fcharset0 Times New Roman;}{\f2\fnil\fcharset163 Times New Roman;}}
{\colortbl ;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang1066\f0\fs24 01  PH\lang1033\f1\''d4\f0 I THAI S\lang1066\f2\u7888?NG TRONG L\lang1033\f1\''d2\f0 NG T\lang1066\f2\u7916? CUNG  KHO\u7842?NG ...  TU\u7846?N\cf0\par
}', N'{\rtf1\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
\viewkind4\uc1\pard\b\f0\fs24\par
}')
INSERT [dbo].[tb_MauSieuAm] ([ID], [STT], [TenMau], [TieuDe], [GioiTinh], [ChuaSuDung], [ChanDoan], [SoHinhInToiDa], [SoPhanMoTa], [KieuIn], [NoiDung1], [NoiDung2], [KetLuan], [DeNghi]) VALUES (84, 5, N'Siêu âm tuyến vú', N'SIÊU ÂM TUYẾN VÚ', N'Nữ', 0, N'{\rtf1\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
\viewkind4\uc1\pard\b\f0\fs24\par
}', 4, 1, N'Dọc', N'{\rtf1\fbidis\ansi\ansicpg1252\deff0{\fonttbl{\f0\froman\fprq2\fcharset0 Times New Roman;}{\f1\froman\fprq2\fcharset238{\*\fname Times New Roman;}Times New Roman CE;}{\f2\froman\fprq2\fcharset163 Times New Roman;}{\f3\fnil Times New Roman;}}
{\colortbl ;\red0\green0\blue0;}
\viewkind4\uc1\pard\ltrpar\li142\tx284\tx567\tx851\tx1134\tx1418\tx1701\tx1985\tx2268\tx2552\tx2835\tx3119\tx3402\tx3686\tx3969\tx4253\tx4536\tx4820\tx5103\tx5387\tx5670\tx5954\tx6237\tx6521\tx6804\tx7088\tx7371\tx7655\tx7938\tx8222\tx8505\tx8789\tx9072\cf1\lang1066\b\f0\fs24\par
1/ V\lang1033\''da B\''caN PH\lang1066\u7842?I :\par
\b0\tab\tab  \tab - M\lang1033\''f4 s\lang1066\u7907?i tuy\u7871?n echo\lang1033\f1  \''f0\lang1066\f0\u7891?\lang1033 ng\lang1066  nh\u7845?t d  mm\par
     \tab\tab - Kh\lang1033\''f4ng t\lang1066\u7893?n\lang1033\f2  th\''fd\''f5ng\lang1066\f0  khu tr\lang1033\''fa    \par
\tab  \tab  \tab - H\lang1066\u7841?ch v\lang1033\''f9ng (-)\par
\par
\b 2/  V\''da B\''caN TR\''c1I \b0 :\par
\tab\tab\tab - M\''f4 s\lang1066\u7907?i tuy\u7871?n echo \lang1033\f1\''f0\lang1066\f0\u7891?\lang1033 ng \lang1066 nh\u7845?t d= mm   \par
      \tab      - Kh\lang1033\''f4ng t\lang1066\u7893?n th\f2\''fd\''f5\f0 ng khu tr\lang1033\''fa    \par
\tab  \tab\tab - H\lang1066\u7841?ch v\lang1033\''f9ng (-) \tab\tab\par
\par
\b\f2 3/ C\''c1C C\''d5 QUAN KH\''c1C\b0 : Ch\''fda ghi nh\lang1066\f0\u7853?n b\u7845?t\lang1033\f2  th\''fd\lang1066\f0\u7901?\lang1033 ng\cf0\lang1066\par
\pard\ltrpar\cf1\b\f3\fs28\par
}', N'{\rtf1\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
\viewkind4\uc1\pard\b\f0\fs24\par
}', N'{\rtf1\ansi\ansicpg1250\deff0{\fonttbl{\f0\fnil Times New Roman;}{\f1\fswiss\fcharset238{\*\fname Arial;}Arial CE;}{\f2\fnil\fcharset163 Times New Roman;}{\f3\fnil\fcharset0 Times New Roman;}}
{\colortbl ;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang1066\f0\fs24 CH\f1\u431?\f0 A TH\f2\u7844?Y B\u7844?T TH\f1\u431?\f2\u7900?NG TR\lang1033\f3\''ca\f0 N SI\f3\''ca\f0 U \f3\''c2\f0 M TUY\lang1066\f2\u7870?N V\lang1033\f3\''da\f0\par
}', N'{\rtf1\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
\viewkind4\uc1\pard\b\f0\fs24\par
}')
INSERT [dbo].[tb_MauSieuAm] ([ID], [STT], [TenMau], [TieuDe], [GioiTinh], [ChuaSuDung], [ChanDoan], [SoHinhInToiDa], [SoPhanMoTa], [KieuIn], [NoiDung1], [NoiDung2], [KetLuan], [DeNghi]) VALUES (85, 8, N'Siêu Âm 4D(in ngang)', N'SIÊU ÂM 4D', N'Nữ', 0, N'{\rtf1\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
\viewkind4\uc1\pard\b\f0\fs24\par
}', 6, 2, N'Mặc định', N'{\rtf1\fbidis\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\froman\fprq2\fcharset0 Times New Roman;}{\f1\froman\fprq2\fcharset163 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\ltrpar\fi357\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540\lang1033\b\f0\fs24 S\u7889?\f1  l\''fd\f0\u7907?ng thai\b0 : 01 thai; \tab\lang1066 Tim thai: \lang1033\tab\lang1066 l\u7847?n/ ph\''fat\lang1033 ;\par
\b C\''e1c s\lang1066\u7889?\f1  \''f0o:\b0\f0  \tab BPD:  mm; \tab\tab HC:  mm; \tab\tab FL :   mm;\par
\lang1033\tab\tab\tab\tab\tab\lang1066 TAD:  mm; \lang1033\tab\tab\lang1066 AP\lang1033 T\lang1066 D:  mm; \lang1033\tab\lang1066 AC :  mm.\par
\b C\''e2n n\u7863?ng\b0 : \lang1033\tab\lang1066 gr\lang1033 am\lang1066\f1  t\''fd\''f5ng \f0\u7913?ng BPV \par
\pard\ltrpar\fi357\sb120\sa20\qc\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540\b\fs28 KH\u7842?\lang1033 O S\''c1T H\''ccNH TH\''c1I\lang1066\par
\pard\ltrpar\fi357\sb20\sa20\qc\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540\b0\fs24 Si\''eau \''e2m ch\u7881? l\''e0 m\u7897?t kh\''e1m nghi\u7879?m l\''e2m s\''e0ng, si\''eau \''e2m kh\''f4ng th\u7875? ph\''e1t hi\u7879?n t\u7845?t c\u7843? c\''e1c d\u7883? t\u7853?t thai nhi.\par
\pard\ltrpar\fi360\sb20\sa20\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540\b 1.\tab S\u7884?\lang1033  - N\''c3O\lang1066 :\b0\par
\pard\ltrpar\li645\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540\lang1033 - \lang1066 H\''ecnh d\u7841?ng h\u7897?p s\u7885?\lang1033 : B\''ecnh th\lang1066\f1\''fd\f0\u7901?ng\lang1033 ;\lang1066\f1              \''d0\''fd\f0\u7901?ng gi\u7919?a: Kh\''f4ng l\u7879?ch\lang1033 ;\par
- \lang1066 H\''ecnh d\u7841?\lang1033 ng  n\''e3o th\lang1066\u7845?t\lang1033 : B\''ecnh th\lang1066\f1\''fd\f0\u7901?ng\lang1033 ;\lang1066           V\''e1ch trong su\u7889?t\lang1033 : B\''ecnh th\lang1066\f1\''fd\f0\u7901?ng\lang1033 ;\par
- \lang1066 N\''e3o th\u7845?t b\''ean (Latvent): mm; \tab\tab\lang1033\tab\lang1066 H\u7889? sau(CM): mm; \tab Ti\u7875?\lang1033 u n\''e3o\lang1066 : mm\lang1033 ;\par
\pard\ltrpar\fi360\sb20\sa20\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540\lang1066\b 2.\tab N\u7870?P G\''c1Y (NF)\b0 : mm\par
\b 3.\tab M\u7854?T:\b0  \lang1033\par
\pard\ltrpar\li645\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540 - \lang1066 Kho\u7843?ng c\''e1ch 02 h\u7889?c m\u7855?t: mm; \tab\lang1033 H\''ecnh \lang1066\u7843?nh 02 lens: \tab\lang1033 Nh\''ecn r\''f5\lang1066 ;\par
\lang1033 - \lang1066 V\''e0nh m\''f4i tr\''ean: li\''ean t\u7909?c; \tab\tab\tab Chi\u7873?\f1 u d\''e0i x\''fd\''f5ng m\u361?i: mm;\par
\pard\ltrpar\fi360\sb20\sa20\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540\b\f0 4.\tab NG\u7920?C:\b0  \i (Kh\u7843?o s\''e1t tr\''ean 05 m\u7863?t c\u7855?t: 4CV - RVOT - LVOT - 3VV - AORTA)\i0\par
\pard\ltrpar\li645\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540\lang1033 - \lang1066 Tim: B\u7889?n bu\u7891?ng tim: C\''e2n x\u7913?ng. \lang1033\tab\lang1066 V\u7883?\f1  tr\''ed, k\''edch th\''fd\f0\u7899?c, tr\u7909?c tim\lang1033 : B\''ecnh th\lang1066\f1\''fd\f0\u7901?ng.\par
\lang1033 - \lang1066 Crux, v\''e1ch li\''ean th\u7845?\f1 t: Ch\''fda th\f0\u7845?y b\u7845?\f1 t th\''fd\f0\u7901?\f1 ng. C\''f5 t\''e2m th\f0\u7845?t co b\''f3p\lang1033 : B\''ecnh th\lang1066\f1\''fd\f0\u7901?ng.\par
\lang1033 - \lang1066\f1 Hai \''f0\f0\u7897?ng m\u7841?ch v\''e0o ph\u7893?i\lang1033 : B\''ecnh th\lang1066\f1\''fd\f0\u7901?ng.\par
\pard\ltrpar\lang1033            - \lang1066 Ph\u7893?i: M\u7853?\f1 t \''f0\f0\u7897? echo\lang1033 : B\''ecnh th\lang1066\f1\''fd\f0\u7901?\f1 ng. \''d0\''fd\f0\u7901?\f1 ng c\''f5 \f0 ho\''e0nh\lang1033 : r\''f5\lang1066\b\par
\b0\par
\pard\ltrpar\sa160\sl252\slmult1\lang1033\par
\pard\ltrpar\cf1\lang1066\b\f1\par
}', N'{\rtf1\fbidis\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\froman\fprq2\fcharset0 Times New Roman;}{\f1\froman\fprq2\fcharset163 Times New Roman;}{\f2\fnil\fcharset163 Times New Roman;}}
{\colortbl ;\red0\green0\blue0;}
\viewkind4\uc1\pard\ltrpar\fi360\sb20\sa20\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540\lang1033\b\f0\fs24 5.\tab C\u7896?T S\u7888?NG:\b0  H\''ecnh d\lang1066\u7841?ng c\u7897?t s\u7889?ng\lang1033 : B\''ecnh th\lang1066\f1\''fd\f0\u7901?ng\par
\b 6.\tab B\u7908?NG:\b0  \lang1033\par
\pard\ltrpar\li645\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540 - \lang1066 Th\''e0nh b\u7909?\f1 ng tr\''fd\f0\u7899?c: Li\''ean t\u7909?c; \lang1033\tab\lang1066 V\u7883?\f1  tr\''ed, k\''edch th\''fd\f0\u7899?c d\u7841? d\''e0y\lang1033 : B\''ecnh th\lang1066\f1\''fd\f0\u7901?ng\par
\lang1033 - \lang1066 H\''ecnh \u7843?nh gan, t\''fai m\u7853?t\lang1033 : B\''ecnh th\lang1066\f1\''fd\f0\u7901?ng\par
\pard\ltrpar\fi360\sb20\sa20\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540\b 7.\tab H\u7878? NI\u7878?U:\b0  \lang1033\par
\pard\ltrpar\li645\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540 - \lang1066 H\''ecnh d\u7841?ng 02 th\u7853?n\lang1033 : B\''ecnh th\lang1066\f1\''fd\f0\u7901?ng\lang1033\par
- \lang1066\f1 K\''edch th\''fd\f0\u7899?c b\''e0ng quang\lang1033 : B\''ecnh th\lang1066\f1\''fd\f0\u7901?ng\par
\pard\ltrpar\fi360\sb20\sa20\tx360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7020\tx7380\tx7740\tx8100\tx8460\tx8820\tx9180\tx9540\b 8.\tab T\u7912? CHI:\lang1033\b0  Quan s\''e1t r\''f5 t\lang1066\u7913? chi, m\u7895?\f1 i chi 03 \''f0o\f0\u7841?n c\''e2n x\u7913?ng.\par
\b 9.\tab NHAU THAI:\b0  B\''e1m m\u7863?\f1 t tr\''fd\f0\u7899?\f1 c, nh\''f3m 1. \''d0\f0\u7897?\f1  tr\''fd\f0\u7903?\f1 ng th\''e0nh: \''d0\f0\u7897? I. D\''e2y r\u7889?n c\''f3 03 m\u7841?ch m\''e1u.\par
\b\f1 10.\tab L\''dd\f0\u7906?\f1 NG N\''dd\f0\u7898?C \u7888?I:\lang1033\b0  B\''ecnh th\lang1066\f1\''fd\f0\u7901?ng\par
\pard\ltrpar\sa160\sl252\slmult1\b 11. GHI NH\u7852?N KH\''c1C:\b0\f1  Ch\''fda ph\''e1t hi\f0\u7879?n b\u7845?\f1 t th\''fd\f0\u7901?ng\lang1033 .\fs22\par
\pard\ltrpar\cf1\fs24 .\lang1066\f1  \cf0\b\f2\par
}', N'{\rtf1\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
\viewkind4\uc1\pard\b\f0\fs24 01 THAI S\u7888?NG C\''c2N N\u7862?NG  KHO\u7842?NG ... GRAM T\''dd\''d5NG \u7912?NG V\u7898?I BVP C\u7910?A THAI ... TU\u7846?N. HI\u7878?N T\u7840?I CH\''ddA PH\''c1T HI\u7878?N B\u7844?T TH\''dd\u7900?NG V\u7872? H\u204?NH TH\''c1I H\u7884?C TR\''caN SI\''caU \''c2M.\par
}', N'{\rtf1\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
\viewkind4\uc1\pard\b\f0\fs24\par
}')
INSERT [dbo].[tb_MauSieuAm] ([ID], [STT], [TenMau], [TieuDe], [GioiTinh], [ChuaSuDung], [ChanDoan], [SoHinhInToiDa], [SoPhanMoTa], [KieuIn], [NoiDung1], [NoiDung2], [KetLuan], [DeNghi]) VALUES (86, 9, N'Siêu Âm Phụ Khoa', N'SIÊU ÂM PHỤ KHOA', N'Nữ', 0, N'{\rtf1\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
\viewkind4\uc1\pard\b\f0\fs24\par
}', 4, 1, N'Dọc', N'{\rtf1\fbidis\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\froman\fprq2\fcharset0 Times New Roman;}{\f1\froman\fprq2\fcharset163 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
\viewkind4\uc1\pard\ltrpar\li284\sb40\sa40\tx567\tx851\tx1134\tx1418\tx1701\tx1985\tx2268\tx2552\tx2835\tx3119\tx3402\tx3686\tx3969\tx4253\tx4536\tx4820\tx5103\tx5387\tx5670\tx5954\tx6237\tx6521\tx6804\tx7088\tx7371\tx7655\tx7938\tx8222\tx8505\tx8789\tx9072\lang1033\ul\b\f0\fs24 1/. T\u7916? CUNG\ulnone  : \par
\pard\ltrpar\fi-360\li1440\sb40\sa40\tx567\tx851\tx1134\tx1418\tx1701\tx1985\tx2268\tx2552\tx2835\tx3119\tx3402\tx3686\tx3969\tx4253\tx4536\tx4820\tx5103\tx5387\tx5670\tx5954\tx6237\tx6521\tx6804\tx7088\tx7371\tx7655\tx7938\tx8222\tx8505\tx8789\tx9072\b0\f1\''b7\tab T\''fd th\f0\u7871? : Ng\''e3 Tr\lang1066\f1\''fd\f0\u7899?c\par
\''b7\tab DAP: \tab    mm \par
\''b7\tab C\u7845?\f1 u tr\''fac c\''f5 : \''d0\f0\u7891?ng nh\u7845?t \par
\''b7\tab N\u7897?i m\u7841?c :    mm\par
\lang1033\''b7\tab L\''f2ng t\lang1066\u7917? cung : tr\u7889?ng\par
\par
\pard\ltrpar\li284\sb40\sa40\tx567\tx851\tx1134\tx1418\tx1701\tx1985\tx2268\tx2552\tx2835\tx3119\tx3402\tx3686\tx3969\tx4253\tx4536\tx4820\tx5103\tx5387\tx5670\tx5954\tx6237\tx6521\tx6804\tx7088\tx7371\tx7655\tx7938\tx8222\tx8505\tx8789\tx9072\ul\b 2/. PH\u7846?N PH\u7908?\ulnone\b0 : \par
\pard\ltrpar\fi-360\li1440\sb40\sa40\tx567\tx851\tx1134\tx1418\tx1701\tx1985\tx2268\tx2552\tx2835\tx3119\tx3402\tx3686\tx3969\tx4253\tx4536\tx4820\tx5103\tx5387\tx5670\tx5954\tx6237\tx6521\tx6804\tx7088\tx7371\tx7655\tx7938\tx8222\tx8505\tx8789\tx9072\''b7\tab Bu\u7891?ng tr\u7913?ng (P) : KT = 22 x 18 mm\par
\''b7\tab Bu\u7891?ng tr\u7913?ng ( T) : KT = 20 x 16 mm\par
\par
\pard\ltrpar\li284\sb40\sa40\tx567\tx851\tx1134\tx1418\tx1701\tx1985\tx2268\tx2552\tx2835\tx3119\tx3402\tx3686\tx3969\tx4253\tx4536\tx4820\tx5103\tx5387\tx5670\tx5954\tx6237\tx6521\tx6804\tx7088\tx7371\tx7655\tx7938\tx8222\tx8505\tx8789\tx9072\ul\b 3/. T\''daI C\''d9NG\ulnone\b0  : Kh\''f4ng d\u7883?ch \par
\par
\lang1033\ul\b 4\lang1066 /. \lang1033 GHI NH\lang1066\u7852?\lang1033 N KH\''c1C\lang1066\ulnone\b0  : \lang1033\f1 Ch\''fda ghi nh\lang1066\f0\u7853?\lang1033 n b\lang1066\u7845?\lang1033\f1 t th\''fd\lang1066\f0\u7901?\lang1033 ng\lang1066  \b\par
\pard\ltrpar\cf1\ul\f1\par
}', N'{\rtf1\fbidis\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
\viewkind4\uc1\pard\ltrpar\b\f0\fs24\par
}', N'{\rtf1\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
\viewkind4\uc1\pard\b\f0\fs24\par
}', N'{\rtf1\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
\viewkind4\uc1\pard\b\f0\fs24\par
}')
INSERT [dbo].[tb_MauSieuAm] ([ID], [STT], [TenMau], [TieuDe], [GioiTinh], [ChuaSuDung], [ChanDoan], [SoHinhInToiDa], [SoPhanMoTa], [KieuIn], [NoiDung1], [NoiDung2], [KetLuan], [DeNghi]) VALUES (87, 10, N'Siêu Âm Tuyến Giáp', N'SIÊU ÂM TUYẾN GIÁP', N'Chung', 0, N'{\rtf1\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
\viewkind4\uc1\pard\b\f0\fs24\par
}', 4, 1, N'Dọc', N'{\rtf1\fbidis\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\froman\fprq2\fcharset0 Times New Roman;}{\f1\froman\fprq2\fcharset163 Times New Roman;}{\f2\froman\fprq2\fcharset238{\*\fname Times New Roman;}Times New Roman CE;}}
\viewkind4\uc1\pard\ltrpar\nowidctlpar\li284\tx567\tx851\tx1134\tx1418\tx1701\tx1985\tx2268\tx2552\tx2835\tx3119\tx3402\tx3686\tx3969\tx4253\tx4536\tx4820\tx5103\tx5387\tx5670\tx5954\tx6237\tx6521\tx6804\tx7088\tx7371\tx7655\tx7938\tx8222\tx8505\tx8789\lang1033\b\f0\fs24 H\''ecnh \u7843?nh 2D:\par
\tab\b0\f1 - K\''edch th\''fd\f0\u7899?c:\tab Th\''f9y P\tab\tab\par
\pard\ltrpar\nowidctlpar\fi720\li284\tx567\tx851\tx1134\tx1418\tx1701\tx1985\tx2268\tx2552\tx2835\tx3119\tx3402\tx3686\tx3969\tx4253\tx4536\tx4820\tx5103\tx5387\tx5670\tx5954\tx6237\tx6521\tx6804\tx7088\tx7371\tx7655\tx7938\tx8222\tx8505\tx8789\lang1036\tab\tab\tab\tab Th\''f9y T\par
\pard\ltrpar\nowidctlpar\li284\tx567\tx851\tx1134\tx1418\tx1701\tx1985\tx2268\tx2552\tx2835\tx3119\tx3402\tx3686\tx3969\tx4253\tx4536\tx4820\tx5103\tx5387\tx5670\tx5954\tx6237\tx6521\tx6804\tx7088\tx7371\tx7655\tx7938\tx8222\tx8505\tx8789\par
\tab - M\u7853?\f2 t \''f0\f0\u7897? Echo:\par
\par
\tab - T\u7893?\f1 n th\''fd\''f5ng khu tr\''fa:\par
\f0\par
\tab - M\''f4 xung quanh:\par
\par
\lang1033\b Doppler:\par
\pard\ltrpar\b0\tab B\''ecnh th\f1\''fd\f0\u7901?ng\lang1066\b\par
\lang1033\fs28\par
}', N'{\rtf1\fbidis\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
\viewkind4\uc1\pard\ltrpar\b\f0\fs24\par
}', N'{\rtf1\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
\viewkind4\uc1\pard\b\f0\fs24\par
}', N'{\rtf1\ansi\ansicpg1258\deff0\deflang1066{\fonttbl{\f0\fnil\fcharset163 Times New Roman;}}
\viewkind4\uc1\pard\b\f0\fs24\par
}')
GO
set identity_insert [dbo].[tb_MauSieuAm] off

set identity_insert [dbo].[tb_SieuAm] on
INSERT [dbo].[tb_SieuAm] ([ID], [Ngay], [SoPhieu], [IDBenhNhan], [TenBenhNhan], [TenBacSiSieuAm], [TenBacSiChiDinh], [MauSieuAm], [ChanDoan], [NoiDung1], [NoiDung2], [KetLuan], [DeNghi], [Khoa]) VALUES (115, CAST(N'2023-11-18T22:30:28.000' AS DateTime), N'2311180001', N'2311180001', N'Bùi Trương Vỉ', N'', N'', N'Siêu âm tim', N'', N'{\rtf1\ansi\ansicpg1252\deff0\nouicompat{\fonttbl{\f0\froman\fprq2\fcharset0 Times New Roman;}{\f1\froman\fprq2\fcharset163 Times New Roman;}{\f2\froman\fprq2\fcharset238 Times New Roman;}}
{\*\generator Riched20 10.0.19041}\viewkind4\uc1 
\pard\li142\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\ul\b\f0\fs24\lang1033 I.TM:\par
\ulnone\b0 V\''e1ch li\''ean TTr:\tab\tab mm\tab\tab\tab\tab Th\f1\lang1066\u7845?t ph\u7843?i:\tab\tab\tab\tab mm\par
Th\u7845?t tr\''e1i TTr:\tab\tab mm\tab\tab\tab\tab T.Th\u7845?t P TTr:\tab\tab mm\par
Ts th\u7845?t T TTr:\tab\tab mm\tab\tab\tab\tab T.Th\u7845?t P TT:\tab\tab\tab mm\par
V\''e1ch li\''ean TT:\tab\tab\tab mm\tab\tab\tab\tab\''d0MC g\u7889?c:\tab\tab\tab\tab mm\par
Th\u7845?t Tr\''e1i TT:\tab\tab\tab mm\tab\tab\tab\tab Nh\f2\u297? Tr\''e1i:\tab\tab\tab\tab mm\par
Ts.th\f1\u7845?t(T) TT:\tab\tab mm\tab\tab\tab\tab B.\''f0\u7897? m\u7903? \''d0MC:\tab\tab mm\f0\lang1033\par
\f1\lang1066 EF\tab\tab\tab\tab\tab :\tab\tab %\tab\tab\tab\tab\tab KL c\''f5 th\u7845?t T:\tab\tab\tab g/m\super 2\par
\nosupersub FR\tab\tab\tab\tab :\tab\tab %\tab\tab\tab\tab\tab C/s\u7889? KLC th\u7845?t T:\tab g/m\super 2\par
\ul\nosupersub\b II.DOPPLER\par

\pard\li426\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\ulnone 1/ D\f0\lang1033\''f2ng 2 l\''e1:\par
\b0 Vmax:\tab\tab m/s\tab\tab GdPmax:\tab\tab mmHg\tab GdPmoy:\tab\tab mmHg\par
H\f1\lang1066\u7903? 2 l\''e1:(+)\tab\tab\tab PHT:\tab\tab ms \tab\b\par

\pard\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\b0\tab H\u7865?p 2 l\''e1:(-)\tab\tab\tab SM:\tab\tab cm\super 2\nosupersub\par

\pard\li426\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\b 2/ D\f0\lang1033\''f2ng ch\f1\lang1066\u7911?:\par
\b0 Vmax:\tab\tab m/s\tab\tab GdPmax:\tab\tab mmHg\tab GdPmoy:\tab\tab mmHg\par
H\u7903? ch\u7911?:(+)\tab\tab\tab PHT:\tab\tab ms\tab\tab d=\tab mm\tab EDTD:\tab\tab m/s\b\par

\pard\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\b0\tab H\u7865?p ch\u7911?:(-)\tab\tab\tab SA:\tab\tab cm\super 2\nosupersub\tab\tab\''d0\u7897? d\''e0i:\par

\pard\li426\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\b 3/ D\f0\lang1033\''f2ng 3 l\''e1:\b0\tab\tab\par
Vmax:\tab\tab m/s\tab\tab GdPmax:\tab\tab mmHg\tab GdPmoy:\tab\tab mmHg\par

\pard\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\tab H\f1\lang1066\u7903? 3 l\''e1:(+)\tab\tab\tab PAPs:\tab\tab mmHg\par

\pard\li426\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\b 4/ D\f0\lang1033\''f2ng ph\f1\lang1066\u7893?i:\tab\b0\par
Vmax:\tab\tab m/s\tab\tab GdPmax:\tab\tab mmHg\tab GdPmoy:\tab\tab mmHg\par
H\u7903? ph\u7893?i:(+)\tab\tab\tab PAPmoy:\tab\tab mmHg\tab PAP diast:\tab\tab mmHg \b\par

\pard\li142\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\ul III.NH\u7852?N X\''c9T:\par
\ulnone\b0\f0\lang1033 C\f1\lang1066\''e1\f0\lang1033 c th\f1\lang1066\''e0\f0\lang1033 nh tim kh\f1\lang1066\''f4\f0\lang1033 ng \f1\lang1066 d\''e0y\f0\lang1033 . C\f1\lang1066\''e1\f0\lang1033 c bu\f1\lang1066\u7891?ng tim kh\''f4\f0\lang1033 ng d\''e3n\f1\lang1066 .\par
Ch\u7913?c n\''e3ng t\''e2m thu th\u7845?t tr\''e1i gi\u7843?m EF=\tab\tab %.\par
H\u7903? van 2 l\''e1:\tab /4.\par
H\u7903? van 3 l\''e1:\tab /4.\par
Kh\''f4ng t\''e3ng \''e1p \''f0\u7897?ng m\u7841?ch ph\u7893?i PAPs =\tab\tab mmHg.\par
Kh\''f4ng tr\''e0n d\u7883?ch m\''e0ng ngo\''e0i tim.\par

\pard\par

\pard\sa160\sl252\slmult1\f0\fs22\lang1033\par

\pard\ul\b\f1\fs24\lang1066\par
}
', N'', N'HIỆN TẠI KHÔNG PHÁT HIỆN BẤT THƯỜNG TRÊN SIÊU ÂM TIM', N'', NULL)
INSERT [dbo].[tb_SieuAm] ([ID], [Ngay], [SoPhieu], [IDBenhNhan], [TenBenhNhan], [TenBacSiSieuAm], [TenBacSiChiDinh], [MauSieuAm], [ChanDoan], [NoiDung1], [NoiDung2], [KetLuan], [DeNghi], [Khoa]) VALUES (116, CAST(N'2023-11-21T22:55:33.000' AS DateTime), N'2311210001', N'2311210001', N'Trần Văn B', N'abc', N'abc', N'Siêu Âm Động Mạch Cảnh', N'', N'{\rtf1\ansi\ansicpg1258\deff0\nouicompat\deflang1066{\fonttbl{\f0\froman\fprq2\fcharset0 Times New Roman;}{\f1\froman\fprq2\fcharset163 Times New Roman;}{\f2\froman\fprq2\fcharset238 Times New Roman CE;}{\f3\froman\fprq2\fcharset238 Times New Roman;}}
{\colortbl ;\red0\green0\blue255;}
{\*\generator Riched20 10.0.19041}\viewkind4\uc1 
\pard\nowidctlpar\li360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7200\tx7560\tx7920\tx8280\b\f0\fs24\lang1033 1.\tab H\f1\lang1066\u7879?\f2  \''f0\f1\u7897?ng m\u7841?ch c\u7843?nh b\''ean ph\u7843?i:\par
\b0\tab a. \f0\lang1033\tab\f1\lang1066\''d0\u7897?ng m\u7841?ch c\u7843?nh chung (CCA)\par

\pard\nowidctlpar\li1260\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7200\tx7560\tx7920\tx8280\f0\lang1033 -\f1\lang1066  K\''edch th\''fd\u7899?c: #  cm\par
\f0\lang1033 -\f1\lang1066  \''d0\u7897? d\''e0y l\u7899?p n\u7897?i m\u7841?c: kt l\u7847?n 1 #  cm, kt l\u7847?n 2 #  cm, kt l\u7847?n 3 #  cm.\par
\f0\lang1033 - \f1\lang1066 V\u7853?n t\u7889?c \''f0\u7881?nh t\''e2m thu (PSV):   cm/s\par

\pard\nowidctlpar\li360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7200\tx7560\tx7920\tx8280\f0\lang1033\tab\f1\lang1066 b. \f0\lang1033\tab\f1\lang1066\''d0\u7897?ng m\u7841?ch c\u7843?nh trong (ICA)\par

\pard\nowidctlpar\li1260\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7200\tx7560\tx7920\tx8280\f0\lang1033 - \f1\lang1066 K\''edch th\''fd\u7899?c: #  cm\par
\f0\lang1033 - \f1\lang1066 V\u7853?n t\u7889?c \''f0\u7881?nh t\''e2m thu (PSV):   cm/s\par

\pard\nowidctlpar\li360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7200\tx7560\tx7920\tx8280\f0\lang1033\tab\f1\lang1066 c. \f0\lang1033\tab\f1\lang1066\''d0\u7897?ng m\u7841?ch c\u7843?nh trong (ECA)\par

\pard\nowidctlpar\li1260\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7200\tx7560\tx7920\tx8280\f0\lang1033 - \f1\lang1066 K\''edch th\''fd\u7899?c: #  cm\par
\f0\lang1033 - \f1\lang1066 V\u7853?n t\u7889?c \''f0\u7881?nh t\''e2m thu (PSV):   cm/s\par

\pard\nowidctlpar\li360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7200\tx7560\tx7920\tx8280\b 2.\tab H\u7879? \''f0\u7897?ng m\u7841?ch c\u7843?nh b\''ean ph\u7843?i:\par
\b0\tab a. \f0\lang1033\tab\f1\lang1066\''d0\u7897?ng m\u7841?ch c\u7843?nh chung (CCA)\par

\pard\nowidctlpar\li1260\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7200\tx7560\tx7920\tx8280\f0\lang1033 - \f1\lang1066 K\''edch th\''fd\u7899?c: #  cm\par
\f0\lang1033 - \f1\lang1066\''d0\u7897? d\''e0y l\u7899?p n\u7897?i m\u7841?c: kt l\u7847?n 1 #  cm, kt l\u7847?n 2 #  cm, kt l\u7847?n 3 #  cm.\par
\f0\lang1033 - \f1\lang1066 V\u7853?n t\u7889?c \''f0\u7881?nh t\''e2m thu (PSV):   cm/s\par

\pard\nowidctlpar\li360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7200\tx7560\tx7920\tx8280\f0\lang1033\tab\f1\lang1066 b. \f0\lang1033\tab\f1\lang1066\''d0\u7897?ng m\u7841?ch c\u7843?nh trong (ICA)\par

\pard\nowidctlpar\li1260\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7200\tx7560\tx7920\tx8280\f0\lang1033 - \f1\lang1066 K\''edch th\''fd\u7899?c: #  cm\par
\f0\lang1033 - \f1\lang1066 V\u7853?n t\u7889?c \''f0\u7881?nh t\''e2m thu (PSV):   cm/s\par

\pard\nowidctlpar\li360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7200\tx7560\tx7920\tx8280\f0\lang1033\tab\f1\lang1066 c. \f0\lang1033\tab\f1\lang1066\''d0\u7897?ng m\u7841?ch c\u7843?nh trong (ECA)\par

\pard\nowidctlpar\li1260\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7200\tx7560\tx7920\tx8280\f0\lang1033 - \f1\lang1066 K\''edch th\''fd\u7899?c: #  cm\par
\f0\lang1033 - \f1\lang1066 V\u7853?n t\u7889?c \''f0\u7881?nh t\''e2m thu (PSV):   cm/s\par

\pard\nowidctlpar\li360\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7200\tx7560\tx7920\tx8280\b 3.\tab H\u7879? t\f3\u297?nh m\f1\u7841?ch:\par

\pard\nowidctlpar\li1020\tx720\tx1080\tx1440\tx1800\tx2160\tx2520\tx2880\tx3240\tx3600\tx3960\tx4320\tx4680\tx5040\tx5400\tx5760\tx6120\tx6480\tx6840\tx7200\tx7560\tx7920\tx8280\b0\f0\lang1033\tab - \f1\lang1066 T\f3\u297?nh m\f1\u7841?ch h\u7847?\f0\lang1033 u trong tr\''e1i: B\''ecnh th\f1\lang1066\''fd\u7901?ng.\par
\f0\lang1033\tab - \f1\lang1066 T\f3\u297?nh m\f1\u7841?ch h\u7847?u trong ph\u7843?\f0\lang1033 i: B\''ecnh th\f1\lang1066\''fd\u7901?ng.\par

\pard\b\f0\lang1033       \f1\lang1066 4.\tab\''d0\u7897?ng m\u7841?ch \''f0\u7889?t d\u7841?\f0\lang1033 ng s\''f3ng b\''ecnh th\f1\lang1066\''fd\u7901?ng.\par
\cf1\par
}
', N'', N'đbgbdgndgfndfgndfgndfn', N'', NULL)
INSERT [dbo].[tb_SieuAm] ([ID], [Ngay], [SoPhieu], [IDBenhNhan], [TenBenhNhan], [TenBacSiSieuAm], [TenBacSiChiDinh], [MauSieuAm], [ChanDoan], [NoiDung1], [NoiDung2], [KetLuan], [DeNghi], [Khoa]) VALUES (117, CAST(N'2023-11-27T19:32:34.000' AS DateTime), N'2311270001', N'2311270001', N'Trần Công Danh', N'', N'', N'Siêu âm tim', N'', N'{\rtf1\ansi\ansicpg1252\deff0\nouicompat{\fonttbl{\f0\froman\fprq2\fcharset0 Times New Roman;}{\f1\froman\fprq2\fcharset163 Times New Roman;}{\f2\froman\fprq2\fcharset238 Times New Roman;}}
{\*\generator Riched20 10.0.19041}\viewkind4\uc1 
\pard\li142\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\ul\b\f0\fs24\lang1033 I.TM:\par
\ulnone\b0 V\''e1ch li\''ean TTr:\tab\tab mm\tab\tab\tab\tab Th\f1\lang1066\u7845?t ph\u7843?i:\tab\tab\tab\tab mm\par
Th\u7845?t tr\''e1i TTr:\tab\tab mm\tab\tab\tab\tab T.Th\u7845?t P TTr:\tab\tab mm\par
Ts th\u7845?t T TTr:\tab\tab mm\tab\tab\tab\tab T.Th\u7845?t P TT:\tab\tab\tab mm\par
V\''e1ch li\''ean TT:\tab\tab\tab mm\tab\tab\tab\tab\''d0MC g\u7889?c:\tab\tab\tab\tab mm\par
Th\u7845?t Tr\''e1i TT:\tab\tab\tab mm\tab\tab\tab\tab Nh\f2\u297? Tr\''e1i:\tab\tab\tab\tab mm\par
Ts.th\f1\u7845?t(T) TT:\tab\tab mm\tab\tab\tab\tab B.\''f0\u7897? m\u7903? \''d0MC:\tab\tab mm\f0\lang1033\par
\f1\lang1066 EF\tab\tab\tab\tab\tab :\tab\tab %\tab\tab\tab\tab\tab KL c\''f5 th\u7845?t T:\tab\tab\tab g/m\super 2\par
\nosupersub FR\tab\tab\tab\tab :\tab\tab %\tab\tab\tab\tab\tab C/s\u7889? KLC th\u7845?t T:\tab g/m\super 2\par
\ul\nosupersub\b II.DOPPLER\par

\pard\li426\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\ulnone 1/ D\u242?ng 2 l\''e1:\par
\b0 Vmax:\tab\tab m/s\tab\tab GdPmax:\tab\tab mmHg\tab GdPmoy:\tab\tab mmHg\par
H\u7903? 2 l\''e1:(+)\tab\tab\tab PHT:\tab\tab ms \tab\b\par

\pard\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\b0\tab H\u7865?p 2 l\''e1:(-)\tab\tab\tab SM:\tab\tab cm\super 2\nosupersub\par

\pard\li426\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\b 2/ D\u242?ng ch\u7911?:\par
\b0 Vmax:\tab\tab m/s\tab\tab GdPmax:\tab\tab mmHg\tab GdPmoy:\tab\tab mmHg\par
H\u7903? ch\u7911?:(+)\tab\tab\tab PHT:\tab\tab ms\tab\tab d=\tab mm\tab EDTD:\tab\tab m/s\b\par

\pard\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\b0\tab H\u7865?p ch\u7911?:(-)\tab\tab\tab SA:\tab\tab cm\super 2\nosupersub\tab\tab\''d0\u7897? d\''e0i:\par

\pard\li426\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\b 3/ D\u242?ng 3 l\''e1:\b0\tab\tab\par
Vmax:\tab\tab m/s\tab\tab GdPmax:\tab\tab mmHg\tab GdPmoy:\tab\tab mmHg\par

\pard\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\tab H\u7903? 3 l\''e1:(+)\tab\tab\tab PAPs:\tab\tab mmHg\par

\pard\li426\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\b 4/ D\u242?ng ph\u7893?i:\tab\b0\par
Vmax:\tab\tab m/s\tab\tab GdPmax:\tab\tab mmHg\tab GdPmoy:\tab\tab mmHg\par
H\u7903? ph\u7893?i:(+)\tab\tab\tab PAPmoy:\tab\tab mmHg\tab PAP diast:\tab\tab mmHg \b\par

\pard\li142\tx426\tx709\tx993\tx1276\tx1560\tx1843\tx2127\tx2410\tx2694\tx2977\tx3261\tx3544\tx3828\tx4111\tx4395\tx4678\tx4962\tx5245\tx5529\tx5812\tx6096\tx6379\tx6663\tx6946\tx7230\tx7513\tx7797\tx8080\tx8364\tx8647\tx8931\tx9214\ul III.NH\u7852?N X\''c9T:\par
\ulnone\b0\f0\lang1033 C\f1\lang1066\''e1\f0\lang1033 c th\f1\lang1066\''e0\f0\lang1033 nh tim kh\f1\lang1066\''f4\f0\lang1033 ng \f1\lang1066 d\''e0y\f0\lang1033 . C\f1\lang1066\''e1\f0\lang1033 c bu\f1\lang1066\u7891?ng tim kh\''f4\f0\lang1033 ng d\f1\lang1066\u227?\f0\lang1033 n\f1\lang1066 .\par
Ch\u7913?c n\''e3ng t\''e2m thu th\u7845?t tr\''e1i gi\u7843?m EF=\tab\tab %.\par
H\u7903? van 2 l\''e1:\tab /4.\par
H\u7903? van 3 l\''e1:\tab /4.\par
Kh\''f4ng t\''e3ng \''e1p \''f0\u7897?ng m\u7841?ch ph\u7893?i PAPs =\tab\tab mmHg.\par
Kh\''f4ng tr\''e0n d\u7883?ch m\''e0ng ngo\''e0i tim.\par

\pard\par

\pard\sa160\sl252\slmult1\f0\fs22\lang1033\par

\pard\ul\b\f1\fs24\lang1066\par
}
', N'', N'HIỆN TẠI KHÔNG PHÁT HIỆN BẤT THƯỜNG TRÊN SIÊU ÂM TIM', N'', NULL)
INSERT [dbo].[tb_SieuAm] ([ID], [Ngay], [SoPhieu], [IDBenhNhan], [TenBenhNhan], [TenBacSiSieuAm], [TenBacSiChiDinh], [MauSieuAm], [ChanDoan], [NoiDung1], [NoiDung2], [KetLuan], [DeNghi], [Khoa]) VALUES (118, CAST(N'2023-11-27T19:38:20.000' AS DateTime), N'2311270002', N'2311270002', N'test2', N'', N'', N'Siêu Âm Tuyến Giáp', N'', N'{\rtf1\ansi\ansicpg1258\deff0\nouicompat\deflang1066{\fonttbl{\f0\froman\fprq2\fcharset0 Times New Roman;}{\f1\froman\fprq2\fcharset163 Times New Roman;}{\f2\froman\fprq2\fcharset238 Times New Roman CE;}}
{\*\generator Riched20 10.0.19041}\viewkind4\uc1 
\pard\nowidctlpar\li284\tx567\tx851\tx1134\tx1418\tx1701\tx1985\tx2268\tx2552\tx2835\tx3119\tx3402\tx3686\tx3969\tx4253\tx4536\tx4820\tx5103\tx5387\tx5670\tx5954\tx6237\tx6521\tx6804\tx7088\tx7371\tx7655\tx7938\tx8222\tx8505\tx8789\b\f0\fs24\lang1033 H\''ecnh \f1\lang1066\u7843?nh 2D:\par
\tab\b0 - K\''edch th\''fd\u7899?c:\tab Th\''f9y P\tab\tab\par

\pard\nowidctlpar\fi720\li284\tx567\tx851\tx1134\tx1418\tx1701\tx1985\tx2268\tx2552\tx2835\tx3119\tx3402\tx3686\tx3969\tx4253\tx4536\tx4820\tx5103\tx5387\tx5670\tx5954\tx6237\tx6521\tx6804\tx7088\tx7371\tx7655\tx7938\tx8222\tx8505\tx8789\f0\lang1036\tab\tab\tab\tab Th\''f9y T\par

\pard\nowidctlpar\li284\tx567\tx851\tx1134\tx1418\tx1701\tx1985\tx2268\tx2552\tx2835\tx3119\tx3402\tx3686\tx3969\tx4253\tx4536\tx4820\tx5103\tx5387\tx5670\tx5954\tx6237\tx6521\tx6804\tx7088\tx7371\tx7655\tx7938\tx8222\tx8505\tx8789\par
\tab - M\f1\lang1066\u7853?\f2 t \''f0\f1\u7897? Echo:\par
\par
\tab - T\u7893?n th\''fd\''f5ng khu tr\''fa:\par
\f0\lang1033\par
\tab - M\''f4 xung quanh:\par
\par
\b Doppler:\par

\pard\b0\tab B\''ecnh th\f1\lang1066\''fd\u7901?ng\b\par
\f0\fs28\lang1033\par
}
', N'', N'', N'', NULL)
GO
set identity_insert [dbo].[tb_SieuAm] off


  update tb_SieuAm set NoiDung1 = 'NoiDung1 NoiDung1 NoiDung1 NoiDung1 NoiDung1 NoiDung1 NoiDung1 NoiDung1 NoiDung1 NoiDung1 
  NoiDung1 NoiDung1 NoiDung1 NoiDung1 NoiDung1 NoiDung1 NoiDung1 
  NoiDung1 NoiDung1 NoiDung1 NoiDung1 NoiDung1 NoiDung1 NoiDung1 
  NoiDung1 NoiDung1 NoiDung1 NoiDung1 NoiDung1 NoiDung1 NoiDung1 '


  Insert into tb_BacSi values ('Nguyen Ngoc Minh Khoi',''), ('BUI VI',''), ('Danh',''),('123 Khoi','')

  delete from tb_SieuAm where ID in (117,118)
  
  update tb_SieuAm set IDBenhNhan = '509' where id = '115'
  update tb_SieuAm set IDBenhNhan = '510' where id = '116'

  update tb_MauSieuAm set TenMau = N'Siêu Âm Động Mạch Cảnh', TieuDe = N'Siêu Âm Động Mạch Cảnh' where ID=83