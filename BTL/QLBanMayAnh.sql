USE [master]
GO
/****** Object:  Database [QLBanMayAnh]    Script Date: 4/25/2023 9:05:09 PM ******/
/*CREATE DATABASE [QLBanMayAnh]*/
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBanMayAnh', FILENAME = N'F:\SQLServer\MSSQL16.MSSQLSERVER\MSSQL\DATA\QLBanMayAnh.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLBanMayAnh_log', FILENAME = N'F:\SQLServer\MSSQL16.MSSQLSERVER\MSSQL\DATA\QLBanMayAnh_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QLBanMayAnh] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBanMayAnh].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBanMayAnh] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBanMayAnh] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBanMayAnh] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBanMayAnh] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBanMayAnh] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBanMayAnh] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLBanMayAnh] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBanMayAnh] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBanMayAnh] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBanMayAnh] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBanMayAnh] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBanMayAnh] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBanMayAnh] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBanMayAnh] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBanMayAnh] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLBanMayAnh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBanMayAnh] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBanMayAnh] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBanMayAnh] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBanMayAnh] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBanMayAnh] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBanMayAnh] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBanMayAnh] SET RECOVERY FULL 
GO
ALTER DATABASE [QLBanMayAnh] SET  MULTI_USER 
GO
ALTER DATABASE [QLBanMayAnh] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBanMayAnh] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBanMayAnh] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBanMayAnh] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLBanMayAnh] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLBanMayAnh] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLBanMayAnh', N'ON'
GO
ALTER DATABASE [QLBanMayAnh] SET QUERY_STORE = ON
GO
ALTER DATABASE [QLBanMayAnh] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QLBanMayAnh]
GO
/****** Object:  Table [dbo].[tAnhSP]    Script Date: 4/25/2023 9:05:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tAnhSP](
	[MaSP] [char](50) NOT NULL,
	[TenFileAnh] [char](100) NOT NULL,
	[ViTri] [smallint] NULL,
 CONSTRAINT [PK_tAnhSP] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[TenFileAnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tChatLieu]    Script Date: 4/25/2023 9:05:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChatLieu](
	[MaChatLieu] [char](25) NOT NULL,
	[ChatLieu] [nvarchar](150) NULL,
 CONSTRAINT [PK_tChatLieu] PRIMARY KEY CLUSTERED 
(
	[MaChatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tChiTietHDB]    Script Date: 4/25/2023 9:05:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tChiTietHDB](
	[ID] [int] NOT NULL,
	[MaHoaDon] [int] NOT NULL,
	[MaSP] [char](50) NOT NULL,
	[SoLuongBan] [int] NULL,
	[DonGiaBan] [money] NULL,
	[GiamGia] [float] NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tChiTietHDB] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tComment]    Script Date: 4/25/2023 9:05:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tComment](
	[ID] [bigint] NOT NULL,
	[CommentMsg] [nvarchar](256) NOT NULL,
	[CommentDate] [datetime] NOT NULL,
	[ProductID] [nvarchar](256) NOT NULL,
	[UserId] [bigint] NOT NULL,
	[ParentID] [bigint] NOT NULL,
	[FullName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_tComment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tDanhMucSP]    Script Date: 4/25/2023 9:05:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tDanhMucSP](
	[MaSP] [char](50) NOT NULL,
	[TenSP] [nvarchar](150) NULL,
	[MaChatLieu] [char](25) NULL,
	[Model] [nvarchar](55) NULL,
	[MaHangSX] [char](25) NULL,
	[MaNuocSX] [char](25) NULL,
	[MaDacTinh] [char](25) NULL,
	[Website] [char](155) NULL,
	[ThoiGianBaoHanh] [float] NULL,
	[GioiThieuSP] [text] NULL,
	[ChietKhau] [float] NULL,
	[MaLoai] [char](25) NULL,
	[MaDT] [char](25) NULL,
	[AnhDaiDien] [char](100) NULL,
	[GiaNhoNhat] [money] NULL,
	[GiaLonNhat] [money] NULL,
 CONSTRAINT [PK_tDanhMucSP] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tHangSX]    Script Date: 4/25/2023 9:05:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tHangSX](
	[MaHangSX] [char](25) NOT NULL,
	[HangSX] [nvarchar](100) NULL,
	[MaNuocThuongHieu] [char](25) NULL,
 CONSTRAINT [PK_tHangSX] PRIMARY KEY CLUSTERED 
(
	[MaHangSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tHoaDonBan]    Script Date: 4/25/2023 9:05:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tHoaDonBan](
	[MaHoaDon] [int] NOT NULL,
	[NgayHoaDon] [char](255) NULL,
	[MaKhachHang] [char](25) NULL,
	[TongTienHD] [money] NULL,
	[GiamGiaHD] [float] NULL,
	[PhuongThucThanhToan] [tinyint] NULL,
	[MaSoThue] [char](100) NULL,
	[ThongTinThue] [nvarchar](250) NULL,
	[GhiChu] [nvarchar](100) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_tHoaDonBan] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tKhachHang]    Script Date: 4/25/2023 9:05:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tKhachHang](
	[MaKhanhHang] [char](25) NOT NULL,
	[username] [char](100) NULL,
	[TenKhachHang] [nvarchar](100) NULL,
	[NgaySinh] [date] NULL,
	[SoDienThoai] [char](15) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[LoaiKhachHang] [tinyint] NULL,
	[AnhDaiDien] [char](100) NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhanhHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tLoaiDT]    Script Date: 4/25/2023 9:05:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tLoaiDT](
	[MaDT] [char](25) NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tLoaiDT] PRIMARY KEY CLUSTERED 
(
	[MaDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tLoaiSP]    Script Date: 4/25/2023 9:05:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tLoaiSP](
	[MaLoai] [char](25) NOT NULL,
	[Loai] [nvarchar](100) NULL,
 CONSTRAINT [PK_tLoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tQuocGia]    Script Date: 4/25/2023 9:05:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tQuocGia](
	[MaNuoc] [char](25) NOT NULL,
	[TenNuoc] [nvarchar](100) NULL,
 CONSTRAINT [PK_tQuocGia] PRIMARY KEY CLUSTERED 
(
	[MaNuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tUser]    Script Date: 4/25/2023 9:05:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tUser](
	[username] [char](100) NOT NULL,
	[password] [char](256) NOT NULL,
	[LoaiUser] [tinyint] NULL,
 CONSTRAINT [PK_tUser] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanoniNSPiC[C]CV-123A                             ', N'CanoniNSPiC[C]CV-123A01.png                                                                         ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanoniNSPiC[C]CV-123A                             ', N'CanoniNSPiC[C]CV-123A02.png                                                                         ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanoniNSPiC[C]CV-123A                             ', N'CanoniNSPiC[C]CV-123A03.png                                                                         ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanonIXUS175                                      ', N'CanonIXUS17501.png                                                                                  ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanonIXUS175                                      ', N'CanonIXUS17502.png                                                                                  ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanonIXUS175                                      ', N'CanonIXUS17503.png                                                                                  ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanonPowerShotG7XMarkIII                          ', N'CanonPowerShotG7XMarkIII01.png                                                                      ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanonPowerShotG7XMarkIII                          ', N'CanonPowerShotG7XMarkIII02.png                                                                      ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanonPowerShotG7XMarkIII                          ', N'CanonPowerShotG7XMarkIII03.png                                                                      ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanonPowerShotSX430IS                             ', N'CanonPowerShotSX430IS01.png                                                                         ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanonPowerShotSX430IS                             ', N'CanonPowerShotSX430IS02.png                                                                         ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanonPowerShotSX430IS                             ', N'CanonPowerShotSX430IS03.png                                                                         ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanonPowerShotSX620HS                             ', N'CanonPowerShotSX620HS01.png                                                                         ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanonPowerShotSX620HS                             ', N'CanonPowerShotSX620HS02.png                                                                         ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'CanonPowerShotSX620HS                             ', N'CanonPowerShotSX620HS03.png                                                                         ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiFilmGFX100                                    ', N'FujiFilmGFX10001.jpg                                                                                ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiFilmGFX100                                    ', N'FujiFilmGFX10002.jpg                                                                                ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiFilmGFX100                                    ', N'FujiFilmGFX10003.jpg                                                                                ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiFilmGFX100S                                   ', N'FujiFilmGFX100S01.jpg                                                                               ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiFilmGFX100S                                   ', N'FujiFilmGFX100S02.jpg                                                                               ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiFilmGFX100S                                   ', N'FujiFilmGFX100S03.jpg                                                                               ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiFilmX-H2S                                     ', N'FujiFilmX-H2S01.jpg                                                                                 ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiFilmX-H2S                                     ', N'FujiFilmX-H2S02.jpg                                                                                 ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiFilmX-H2S                                     ', N'FujiFilmX-H2S03.jpg                                                                                 ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiFilmX100V                                     ', N'FujiFilmX100V01.jpg                                                                                 ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiFilmX100V                                     ', N'FujiFilmX100V02.jpg                                                                                 ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiFilmX100V                                     ', N'FujiFilmX100V03.jpg                                                                                 ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiXP140                                         ', N'FujiXP14001.jpg                                                                                     ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiXP140                                         ', N'FujiXP14002.jpg                                                                                     ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'FujiXP140                                         ', N'FujiXP14003.jpg                                                                                     ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaMaxxum7000                                 ', N'MinoltaMaxxum700001.jpg                                                                             ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaMaxxum7000                                 ', N'MinoltaMaxxum700002.jpg                                                                             ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaMaxxum7000                                 ', N'MinoltaMaxxum700003.jpg                                                                             ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaX-500SLR                                   ', N'MinoltaX-500SLR01.jpg                                                                               ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaX-500SLR                                   ', N'MinoltaX-500SLR02.jpg                                                                               ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaX-500SLR                                   ', N'MinoltaX-500SLR03.jpg                                                                               ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaXD-11SLR                                   ', N'MinoltaXD-11SLR01.jpg                                                                               ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaXD-11SLR                                   ', N'MinoltaXD-11SLR02.jpg                                                                               ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaXD-11SLR                                   ', N'MinoltaXD-11SLR03.jpg                                                                               ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaXG-1                                       ', N'MinoltaXG-101.jpg                                                                                   ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaXG-1                                       ', N'MinoltaXG-102.jpg                                                                                   ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaXG-1                                       ', N'MinoltaXG-103.jpg                                                                                   ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaXG-MSLR                                    ', N'MinoltaXG-MSLR01.jpg                                                                                ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaXG-MSLR                                    ', N'MinoltaXG-MSLR02.jpg                                                                                ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'MinoltaXG-MSLR                                    ', N'MinoltaXG-MSLR03.jpg                                                                                ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZ30                                          ', N'NikonZ3001.jpg                                                                                      ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZ30                                          ', N'NikonZ3002.jpg                                                                                      ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZ30                                          ', N'NikonZ3003.jpg                                                                                      ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZ6II                                         ', N'NikonZ6II01.jpg                                                                                     ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZ6II                                         ', N'NikonZ6II02.jpg                                                                                     ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZ6II                                         ', N'NikonZ6II03.jpg                                                                                     ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZ7II                                         ', N'NikonZ7II01.jpg                                                                                     ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZ7II                                         ', N'NikonZ7II02.jpg                                                                                     ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZ7II                                         ', N'NikonZ7II03.jpg                                                                                     ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZ8                                           ', N'NikonZ801.jpg                                                                                       ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZ8                                           ', N'NikonZ802.jpg                                                                                       ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZ8                                           ', N'NikonZ803.jpg                                                                                       ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZFC                                          ', N'NikonZFC01.jpg                                                                                      ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZFC                                          ', N'NikonZFC02.jpg                                                                                      ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'NikonZFC                                          ', N'NikonZFC03.jpg                                                                                      ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyAlphaILCE-6400                                ', N'SonyAlphaILCE-640001.jpg                                                                            ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyAlphaILCE-6400                                ', N'SonyAlphaILCE-640002.jpg                                                                            ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyAlphaILCE-6400                                ', N'SonyAlphaILCE-640003.jpg                                                                            ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyAlphaILCE-7RM5                                ', N'SonyAlphaILCE-7RM501.jpg                                                                            ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyAlphaILCE-7RM5                                ', N'SonyAlphaILCE-7RM502.jpg                                                                            ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyAlphaILCE-7RM5                                ', N'SonyAlphaILCE-7RM503.jpg                                                                            ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyCyberShotDSC-RX0M2G                           ', N'SonyCyberShotDSC-RX0M2G01.jpg                                                                       ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyCyberShotDSC-RX0M2G                           ', N'SonyCyberShotDSC-RX0M2G02.jpg                                                                       ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyCyberShotDSC-RX0M2G                           ', N'SonyCyberShotDSC-RX0M2G03.jpg                                                                       ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyCyberShotDSC-RX10M4                           ', N'SonyCyberShotDSC-RX10M401.jpg                                                                       ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyCyberShotDSC-RX10M4                           ', N'SonyCyberShotDSC-RX10M402.jpg                                                                       ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyCyberShotDSC-RX10M4                           ', N'SonyCyberShotDSC-RX10M403.jpg                                                                       ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyZV-E10                                        ', N'SonyZV-E1001.jpg                                                                                    ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyZV-E10                                        ', N'SonyZV-E1002.jpg                                                                                    ', NULL)
INSERT [dbo].[tAnhSP] ([MaSP], [TenFileAnh], [ViTri]) VALUES (N'SonyZV-E10                                        ', N'SonyZV-E1003.jpg                                                                                    ', NULL)
GO
INSERT [dbo].[tChatLieu] ([MaChatLieu], [ChatLieu]) VALUES (N'al                       ', N'Nhôm')
INSERT [dbo].[tChatLieu] ([MaChatLieu], [ChatLieu]) VALUES (N'n                        ', N'Nhựa cứng')
INSERT [dbo].[tChatLieu] ([MaChatLieu], [ChatLieu]) VALUES (N't                        ', N'Titan')
GO
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (1, 1, N'CanonIXUS175                                      ', 1, 91200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (2, 1, N'CanonPowerShotG7XMarkIII                          ', 1, 81200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (3, 2, N'CanoniNSPiC[C]CV-123A                             ', 1, 71200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (4, 2, N'CanonIXUS175                                      ', 1, 91200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (5, 3, N'CanonIXUS175                                      ', 1, 91200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (6, 3, N'FujiFilmGFX100S                                   ', 1, 1200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (7, 4, N'CanonIXUS175                                      ', 1, 91200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (8, 4, N'CanonPowerShotG7XMarkIII                          ', 1, 81200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (9, 5, N'CanonPowerShotG7XMarkIII                          ', 1, 81200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (10, 6, N'CanonIXUS175                                      ', 4, 91200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (11, 6, N'CanonPowerShotG7XMarkIII                          ', 2, 81200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (12, 7, N'CanonIXUS175                                      ', 4, 91200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (13, 7, N'CanonPowerShotG7XMarkIII                          ', 2, 81200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (14, 8, N'CanonIXUS175                                      ', 4, 91200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (15, 8, N'CanonPowerShotG7XMarkIII                          ', 2, 81200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (16, 9, N'CanonIXUS175                                      ', 4, 91200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (17, 9, N'CanonPowerShotG7XMarkIII                          ', 2, 81200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (18, 10, N'CanonIXUS175                                      ', 4, 91200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (19, 10, N'CanonPowerShotG7XMarkIII                          ', 2, 81200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (20, 11, N'CanonIXUS175                                      ', 4, 91200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (21, 11, N'CanonPowerShotG7XMarkIII                          ', 2, 81200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (22, 12, N'CanonIXUS175                                      ', 4, 91200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (23, 12, N'CanonPowerShotG7XMarkIII                          ', 2, 81200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (24, 13, N'FujiFilmGFX100                                    ', 1, 1200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (25, 13, N'FujiFilmX100V                                     ', 1, 31200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (26, 14, N'CanonIXUS175                                      ', 1, 91200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (27, 14, N'CanonPowerShotSX430IS                             ', 2, 1200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (28, 14, N'FujiFilmGFX100S                                   ', 2, 1200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (29, 15, N'FujiFilmGFX100                                    ', 1, 1200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (30, 15, N'FujiFilmGFX100S                                   ', 1, 1200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (31, 16, N'CanonIXUS175                                      ', 1, 91200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (32, 16, N'CanonPowerShotSX430IS                             ', 1, 1200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (33, 17, N'CanonPowerShotG7XMarkIII                          ', 1, 81200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (34, 18, N'FujiFilmGFX100S                                   ', 1, 1200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (35, 18, N'FujiFilmX100V                                     ', 1, 31200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (36, 19, N'FujiFilmGFX100                                    ', 1, 1200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (37, 19, N'FujiFilmGFX100S                                   ', 1, 1200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (38, 19, N'CanonPowerShotSX430IS                             ', 1, 1200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (39, 20, N'CanonPowerShotG7XMarkIII                          ', 2, 81200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (40, 20, N'CanonPowerShotSX430IS                             ', 1, 1200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (41, 21, N'FujiFilmGFX100                                    ', 4, 1200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (42, 21, N'FujiFilmGFX100S                                   ', 1, 1200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (43, 22, N'CanonIXUS175                                      ', 3, 91200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (44, 22, N'CanonPowerShotG7XMarkIII                          ', 1, 81200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (45, 23, N'CanonIXUS175                                      ', 1, 91200000.0000, NULL, NULL)
INSERT [dbo].[tChiTietHDB] ([ID], [MaHoaDon], [MaSP], [SoLuongBan], [DonGiaBan], [GiamGia], [GhiChu]) VALUES (46, 23, N'CanonPowerShotG7XMarkIII                          ', 1, 81200000.0000, NULL, NULL)
GO
INSERT [dbo].[tComment] ([ID], [CommentMsg], [CommentDate], [ProductID], [UserId], [ParentID], [FullName]) VALUES (1, N'oke lam', CAST(N'2023-10-10T00:00:00.000' AS DateTime), N'CanonPowerShotG7XMarkIII', 1, 5, N'hieptran')
INSERT [dbo].[tComment] ([ID], [CommentMsg], [CommentDate], [ProductID], [UserId], [ParentID], [FullName]) VALUES (2, N'cung duoc', CAST(N'2023-10-10T00:00:00.000' AS DateTime), N'CanonPowerShotG7XMarkIII', 2, 3, N'huan')
INSERT [dbo].[tComment] ([ID], [CommentMsg], [CommentDate], [ProductID], [UserId], [ParentID], [FullName]) VALUES (3, N'ngon day, nhung dat', CAST(N'2023-04-25T00:00:00.000' AS DateTime), N'@Model.MaSp', 1, 3, N'hieptran')
INSERT [dbo].[tComment] ([ID], [CommentMsg], [CommentDate], [ProductID], [UserId], [ParentID], [FullName]) VALUES (4, N'qua xin', CAST(N'2023-04-25T00:00:00.000' AS DateTime), N'@Model.MaSp', 1, 5, N'hieptran')
INSERT [dbo].[tComment] ([ID], [CommentMsg], [CommentDate], [ProductID], [UserId], [ParentID], [FullName]) VALUES (5, N'tam duoc', CAST(N'2023-04-25T00:00:00.000' AS DateTime), N'CanonIXUS175', 1, 4, N'hieptran')
INSERT [dbo].[tComment] ([ID], [CommentMsg], [CommentDate], [ProductID], [UserId], [ParentID], [FullName]) VALUES (6, N'hao ngoo', CAST(N'2023-04-25T00:00:00.000' AS DateTime), N'FujiFilmGFX100', 1, 5, N'hao ')
INSERT [dbo].[tComment] ([ID], [CommentMsg], [CommentDate], [ProductID], [UserId], [ParentID], [FullName]) VALUES (7, N'hii', CAST(N'2023-04-25T00:00:00.000' AS DateTime), N'FujiFilmGFX100', 1, 3, N'"huanb906@gmail.com"')
INSERT [dbo].[tComment] ([ID], [CommentMsg], [CommentDate], [ProductID], [UserId], [ParentID], [FullName]) VALUES (8, N'hoi d?t', CAST(N'2023-04-25T00:00:00.000' AS DateTime), N'FujiFilmX100V', 1, 4, N'huanb906@gmail.com')
GO
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'CanoniNSPiC[C]CV-123A                             ', N'Máy ảnh Canon iNSP iC[C]CV-123A', N'n                        ', NULL, N'ca                       ', N'jap                      ', NULL, NULL, 5, N'Th?a s?c vui ch?p và t?c thì m?i lúc, m?i noi Có s?n 3 màu d? l?a ch?n: Bumble Bee Yellow, Bubble Gum Pink và Seaside Blue', NULL, N'pro                      ', N'nd                       ', N'CanoniNSPiC[C]CV-123A01.png                                                                         ', NULL, 71200000.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'CanonIXUS175                                      ', N'Máy ảnh Canon IXUS 175', N'n                        ', NULL, N'ca                       ', N'jap                      ', NULL, NULL, 5, N'V?i ?ng kính zoom quang h?c 8x, c?m bi?n CCD 20.0 megapixel và b? x? lý hình ?nh DIGIC 4+, chi?c máy ?nh Canon IXUS 175 giúp vi?c ch?p ?nh tr? nên thú v? và d?c dáo hon. Công ngh? c?i ti?n v?i các cài d?t uu tiên t?i da giúp ngu?i dùng s? d?ng d? dàng, ch? c?n ng?m và ch?p. Cùng v?i hình ?nh d? phân gi?i cao có màu r?c r? r?c r?, ch? d? ch?p ?nh vui nh?n cho phép ngu?i dùng s? d?ng tho?i mái và sáng t?o ch? b?ng m?t vài cài d?t don gi?n.', NULL, N'pro                      ', N'nd                       ', N'CanonIXUS17501.png                                                                                  ', NULL, 91200000.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'CanonPowerShotG7XMarkIII                          ', N'Máy ảnh Canon PowerShot G7X Mark III', N't                        ', NULL, N'ca                       ', N'jap                      ', NULL, NULL, 5, N'K? th?a cho PowerShot G7 X Mark II n?i ti?ng, chi?c máy ?nh này là s? nâng c?p hoàn h?o cho nh?ng ai mu?n nhi?u hon là t?c d? ch?p nhanh. DIGIC 8 và c?m bi?n 1.0 inch Stacked CMOS cung c?p ch?t lu?ng hình ?nh d?c bi?t. Ðu?c k?t h?p v?i ?ng kính f / 1.8-2.8, PowerShot G7 X Mark III ho?t d?ng r?t t?t trong di?u ki?n ánh sáng y?u.', NULL, N'pro                      ', N'nd                       ', N'CanonPowerShotG7XMarkIII01.png                                                                      ', NULL, 81200000.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'CanonPowerShotSX430IS                             ', N'Máy ảnh Canon PowerShot SX 430 IS', N'al                       ', NULL, N'ca                       ', N'jap                      ', NULL, NULL, 5, N'PowerShot SX430 IS là m?t máy ?nh 20.0 megapixel phù h?p cho nh?ng chuy?n di du l?ch v?i kh? nang zoom quang h?c 45x, cho b?n kh? nang ch?p c?n c?nh các d?i tu?ng. Báng pin d?ng công thái h?c cung giúp thao tác t?t hon, d?c bi?t h?u d?ng d? ghi video và d?m b?o hình ?nh ?n d?nh. V?i tính nang tích h?p Wi-Fi/NFC, vi?c chia s? hình ?nh trên m?ng xã h?i chua bao gi? don gi?n d?n th?. B? x? lý ?nh DIGIC 4+', NULL, N'pro                      ', N'nd                       ', N'CanonPowerShotSX430IS01.png                                                                         ', NULL, 1200000.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'CanonPowerShotSX620HS                             ', N'Máy ảnh Canon PowerShot SX 620 HS', N't                        ', NULL, N'ca                       ', N'jap                      ', NULL, NULL, 5, N'Máy ?nh PowerShot SX620 HS du?c trang b? b? x? lý DIGIC 4+ và b? c?m bi?n c?m bi?n CMOS 20.2 megapixel, ch?c ch?n ch?t lu?ng hình ?nh trong di?u ki?n ánh sáng khác nhau, là s? l?a ch?n hoàn h?o cho ngu?i di du l?ch gi? m?o thích thu?n ti?n.', NULL, N'pro                      ', N'nd                       ', N'CanonPowerShotSX620HS01.png                                                                         ', NULL, 91200000.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'FujiFilmGFX100                                    ', N'Máy ảnh FujiFilmGFX100', N'n                        ', NULL, N'fu                       ', N'jap                      ', NULL, NULL, 5, N'GFX100 k?t h?p nhi?u th?p k? kinh nghi?m, ki?n ??th?c và nghiên c?u thành m?t chi?c máy ?nh kh? l?n không guong l?t giúp xác d?nh l?i các ranh gi?i và gi?i h?n trong cách các nhi?p ?nh gia và nhà làm phim th? hi?n b?n thân m?t cách sáng t?o.', NULL, N'fi                       ', N'nd                       ', N'FujiFilmGFX10001.jpg                                                                                ', NULL, 1200000.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'FujiFilmGFX100S                                   ', N'Máy ảnh FujiFilmGFX100S', N't                        ', NULL, N'fu                       ', N'jap                      ', NULL, NULL, 5, N'Là nhi?p ?nh gia, chúng tôi ph?n d?u cho s? hoàn h?o, liên t?c tìm ki?m ch?t lu?ng hình ?nh cao nh?t và ki?m soát t?i uu trong nh?ng gì chúng tôi t?o ra. GFX100S k?t h?p hai thu?c tính vô giá này trong m?t thân máy c?c k? nh? g?n và nh?. Nó là m?t công c? hình ?nh không gi?ng ai; m?t th? h? máy ?nh kh? l?n m?i phù h?p v?i th? h? sáng t?o m?i.', NULL, N'fi                       ', N'nd                       ', N'FujiFilmGFX100S01.jpg                                                                               ', NULL, 1200000.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'FujiFilmX-H2S                                     ', N'Máy ảnh FujiFilmX-H2S', N'al                       ', NULL, N'fu                       ', N'jap                      ', NULL, NULL, 5, N'Không bao gi? b? l? kho?nh kh?c quy?t d?nh. Trang b? c?m bi?n X-Trans CMOS 5 HS th? h? th? 5 tuy?t d?p và X-Processor 5 trong m?t thân máy du?c thi?t k? th?i thu?ng, các ghi ?nh gia và nhà làm phim gi? dây có th? sáng t?o theo nh?p s?ng và t?c d? h?ng s? mong mu?n.', NULL, N'fi                       ', N'nd                       ', N'FujiFilmX-H2S01.jpg                                                                                 ', NULL, 21200000.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'FujiFilmX100V                                     ', N'Máy ảnh FujiFilmX100V', N'n                        ', NULL, N'fu                       ', N'jap                      ', NULL, NULL, 5, N'X100V s? h?u máy thân v?i thi?t k? th?i d?i có khung trên và bên du?i du?c ti?n ích t? nguyên kh?i, k?t qu? là thân máy tính t? và c? di?n v?i các C?n c?nh bo tròn g?n gàng và thu hút. Ðu?c hoàn thi?n t?t nh? l?p ph? satin bóng d?p, X100V là s? k?t h?p hoàn h?o gi?a thi?t k? và k? thu?t, ch?c ch?n s? t?o ra các ch?p ?nh gia dù ? ch? d? nào cung c?m th?y hân hoan khi ch?p ?nh.', NULL, N'fi                       ', N'nd                       ', N'FujiFilmX100V01.jpg                                                                                 ', NULL, 31200000.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'FujiXP140                                         ', N'Máy ảnh FujiXP140', N'n                        ', NULL, N'fu                       ', N'jap                      ', NULL, NULL, 5, N'Ðu?c trang b? ?ng kính thu phóng v?i m?t ?ng kính góc r?ng linh ho?t b?t d?u t? 28mm*1, XP140 có thu phóng quang 5x cho phép b?n d?n g?n d?i tu?ng hon. XP140 k?t h?p thu phóng quang 5x v?i Thu phóng k? thu?t s? thông minh, giúp tang g?p dôi ph?m vi thu phóng ( 10x) d?ng th?i cung c?p kh? nang x? lý hình ?nh t?i uu d? ch?ng l?i hi?n tu?ng xu?ng c?p thu?ng x?y ra khi s? d?ng thu phóng k? thu?t s?.', NULL, N'fi                       ', N'nd                       ', N'FujiXP14001.jpg                                                                                     ', NULL, 51200000.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'MinoltaMaxxum7000                                 ', N'Máy ảnh Minolta Maxxum 7000', N'al                       ', NULL, N'mi                       ', N'jap                      ', NULL, NULL, 5, N'Ðu?c gi?i thi?u v?i th? gi?i vào nam 1985 v?i tên g?i “Máy ?nh SLR d? s? d?ng nh?t th? gi?i”, Minolta Maxxum 7000 là m?t chi?c máy ?nh dáng chú ý vào th?i di?m dó và theo nhi?u cách, nó là ph?n m? r?ng h?p lý c?a chi?c máy ?nh SLR l?y nét th? công cu?i cùng mà Minolta t?ng s?n xu?t, X-700. Nó bao g?m các phiên b?n c?i ti?n c?a chuong trình X-700, uu tiên kh?u d? và ch? d? phoi sáng th? công cung nhu do sáng dèn flash qua ?ng kính, công t?c c?m ?ng và tay c?m, d?ng th?i b? sung không ch? l?y nét t? d?ng mà c? ch? d? uu tiên màn tr?p, v?n chuy?n phim có d?ng co , và m?t kính ng?m r?t sáng v?i màn hình LED hi?n th? tr?c quan t?t c? các thông tin v? ch? d? phoi sáng, l?y nét và truy?n d?ng.', NULL, N'fi                       ', N'nd                       ', N'MinoltaMaxxum700001.jpg                                                                             ', NULL, 71200000.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'MinoltaX-500SLR                                   ', N'Máy ảnh Minolta X-500 SLR', N't                        ', NULL, N'mi                       ', N'jap                      ', NULL, NULL, 5, N'Minolta X-500 (X-570 ? Hoa K?) là máy ?nh phim SLR 35 mm Aperture-Priority v?i màn tr?p m?t ph?ng tiêu di?m ngang du?c di?u khi?n b?ng th?ch anh có kh? nang d?t d?i t?c d? t? 4 giây d?n 1/1000 giây, B .X-500 cung có th? ho?t d?ng ? ch? d? th? công hoàn toàn ? t?c d? màn tr?p cài d?t s?n (1 d?n 1/1000 giây) v?i dèn LED do sáng phù h?p. Ð?ng b? hóa flash ? m?c 1/60 giây.', NULL, N'fi                       ', N'nd                       ', N'MinoltaX-500SLR01.jpg                                                                               ', NULL, 51200000.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'MinoltaXD-11SLR                                   ', N'Máy ảnh Minolta XD-11 SLR', N't                        ', NULL, N'mi                       ', N'jap                      ', NULL, NULL, 5, N'MÁY ?NH PHIM SLR MINOLTA XD-11 35mm w/ ?NG KÍNH MD ROKKOR-X 45mm f2.0. Ho?t d?ng + Pin! Ðây là máy ?nh Minolta tuy?t v?i dành cho sinh viên cung nhu nh?ng ngu?i dam mê. Máy ?nh phim 35mm này di kèm v?i ?ng kính m?t tiêu c? chính hãng Minolta Rokkor-X 45mm f/2. Máy ?nh này dã du?c th? nghi?m d?y d?. ?ng kính rõ ràng và không có n?m, suong mù và n?m m?c. Ð?ng h? do ánh sáng dang ho?t d?ng và pin m?i. Ch? c?n n?p phim lên và b?t d?u ch?p! Ði?u ki?n ------------- Ði?u ki?n làm vi?c dã du?c th? nghi?m xu?t s?c. Bao g?m pin. ?ng kính không có n?m, suong mù và tách bi?t. Không có d?u trên lu?i dao. Ði kèm v?i m?t b? l?c ?ng kính. Da hoi bong tróc ? m?t s? ch?. Khó nh?n th?y ngo?i tr? trong ?nh macro.', NULL, N'fi                       ', N'nd                       ', N'MinoltaXD-11SLR01.jpg                                                                               ', NULL, 61200000.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'MinoltaXG-1                                       ', N'Máy ảnh Minolta XG-1', N't                        ', NULL, N'mi                       ', N'jap                      ', NULL, NULL, 5, N'Minolta XG-1 là máy ?nh ph?n x? ?ng kính don ch?t lu?ng hàng d?u có h? th?ng di?n t? s? t? d?ng ki?m soát d? phoi sáng cho b?n, giúp b?n tho?i mái hon d? t?n hu?ng nhi?u hon và sáng t?o hon. B?n cung có th? ghi dè cài d?t t? d?ng c?a máy do ho?c d?t máy ?nh ? ch? d? v?n hành th? công hoàn toàn. Nh? c?a tr?p di?n t? và d?u do sáng "Touch Switch" d?c dáo cùng nhi?u tính nang khác.', NULL, N'fi                       ', N'nd                       ', N'MinoltaXG-101.jpg                                                                                   ', NULL, 31200000.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'MinoltaXG-MSLR                                    ', N'Máy ảnh Minolta XG-M SLR', N'al                       ', NULL, N'mi                       ', N'jap                      ', NULL, NULL, 5, N'Minolta XG-M, du?c gi?i thi?u vào nam 1981, là m?u máy ?nh phim SLR 35mm dòng XG dành cho ngu?i tiêu dùng hàng d?u mà Minolta s?n xu?t t? nam 1977 d?n nam 1982. M?u máy này, v?i ký hi?u cho kh? nang ch?p ?nh c?a nó. dang du?c s? d?ng v?i 3,5 khung hình / giây Motor Drive 1, dã du?c cung c?p trên toàn th? gi?i nhung không có ? Nh?t B?n, noi thay vào dó, phiên b?n chrome c?a X-700 dã du?c ra m?t.', NULL, N'fi                       ', N'nd                       ', N'MinoltaXG-MSLR01.jpg                                                                                ', NULL, 61200000.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'NikonZ30                                          ', N'Máy ảnh Nikon Z30', N't                        ', NULL, N'ni                       ', N'jap                      ', NULL, NULL, 5, N'Máy ?nh Nikon Z30 là chi?c máy ?nh Nikon nh?m d?n nh?ng ngu?i làm vlog và ngu?i sáng t?o n?i dung, máy s? d?ng c?m bi?n APS-C (DX) d? phân gi?i 20MP, có kh? nang quay t?i da 4K 30p, trong thân hình nh? g?n và quan tr?ng light size.', NULL, N'fi                       ', N'nd                       ', N'NikonZ3001.jpg                                                                                      ', NULL, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'NikonZ6II                                         ', N'Máy ảnh Nikon Z6 II', N'al                       ', NULL, N'ni                       ', N'jap                      ', NULL, NULL, 5, N'Máy ?nh Nikon Z6 II là chi?c máy ?nh dòng Z linh ho?t nh?t, cân b?ng gi?a t?c d?, công su?t, kh? nang thi?u sáng và tính nang video nâng cao. Máy ?nh này s? là l?a ch?n hoàn h?o cho nh?ng ngu?i c?n hi?u su?t và d? tin c?y ? c?p d? chuyên nghi?p.', NULL, N'fi                       ', N'nd                       ', N'NikonZ6II01.jpg                                                                                     ', NULL, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'NikonZ7II                                         ', N'Máy ảnh Nikon Z7 II', N'n                        ', NULL, N'ni                       ', N'jap                      ', NULL, NULL, 5, N'Máy ?nh Nikon Z7 II là chi?c máy ?nh có d? phân gi?i cao trong dòng máy ?nh không guong l?t c?a Nikon. Z7 II hi?n có b? x? lý kép, b? d?m t?t hon, th?i lu?ng pin t?t hon. Và máy ?nh có th? quay video ?n tu?ng 4K 60 khung hình/giây.', NULL, N'fi                       ', N'nd                       ', N'NikonZ7II01.jpg                                                                                     ', NULL, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'NikonZ8                                           ', N'Máy ảnh Nikon Z8', N'n                        ', NULL, N'ni                       ', N'jap                      ', NULL, NULL, 5, N'Máy ?nh Nikon Z8 dã du?c c?i ti?n và nâng c?p các tính nang m?i m? hon so v?i các phiên b?n tru?c. V?i nhi?u d?c di?m du?c dánh giá cao, mang d?n kh? nang quay phim và ch?p ?nh m?nh m? hon, dáp ?ng nh?ng yêu c?u cao c?p hon c?a ngu?i dùng.', NULL, N'fi                       ', N'nd                       ', N'NikonZ801.jpg                                                                                       ', NULL, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'NikonZFC                                          ', N'Máy ảnh Nikon Z FC', N't                        ', NULL, N'ni                       ', N'jap                      ', NULL, NULL, 5, N'Máy ?nh Nikon ZFC s? h?u thi?t k? c? di?n hòa h?p v?i k? thu?t hi?n d?i. Dù b?n dang sáng t?o n?i dung hay tái hi?n nhãn quan ngh? thu?t c?a mình, dây h?n hò là s? b? sung hoàn h?o cho nh?ng ai yêu thích ch?p ?nh toàn phong cách.', NULL, N'fi                       ', N'nd                       ', N'NikonZFC01.jpg                                                                                      ', NULL, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SonyAlphaILCE-6400                                ', N'Máy ảnh Sony Alpha ILCE-6400', N'n                        ', NULL, N'so                       ', N'jap                      ', NULL, NULL, 5, N'Máy ?nh Sony A6400 là chi?c máy ?nh mirrorless tiên ti?n du?c thi?t k? dành cho c? nh?ng ngu?i dam mê và chuyên nghi?p. Máy ?nh n?i b?t v?i c?m bi?n APS-C 24MP, h? th?ng l?y nét t? d?ng hàng d?u và các tính nang video tuy?t v?i.', NULL, N'pro                      ', N'nd                       ', N'SonyAlphaILCE-640001.jpg                                                                            ', NULL, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SonyAlphaILCE-7RM5                                ', N'Máy ảnh Sony Alpha ILCE-7RM5', N'n                        ', NULL, N'so                       ', N'jap                      ', NULL, NULL, 5, N'Máy ?nh Sony AR7 Mark V là chi?c máy ?nh th? h? th? 5 trong dòng máy mirrorless Full-frame d? phân gi?i cao c?a hãng. Máy ?nh có cùng d? phân gi?i 61MP nhu A7R IV, nhung có b? x? lý Bionz XR m?i m?nh hon. Ðu?c trang b? b? x? lý AI tiên ti?n, m? r?ng kh? nang nh?n di?n ch? th? d? t?n d?ng t?i da hi?u su?t máy ?nh.', NULL, N'pro                      ', N'nd                       ', N'SonyAlphaILCE-7RM501.jpg                                                                            ', NULL, 565000.0000)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SonyCyberShotDSC-RX0M2G                           ', N'Máy ảnh Sony CyberShot DSC-RX0M2G', N't                        ', NULL, N'so                       ', N'jap                      ', NULL, NULL, 5, N'Máy ?nh SonyCyberShotDSC-RX0M2G là s? k?t h?p gi?a thân máy siêu nh? g?n, linh ho?t và hi?u qu? dáng tin c?y. Máy ?nh h? tr? quay phim v?i t?c d? phân gi?i lên t?i 4K 30p (25p/30p), cùng v?i kh? nang ?n d?nh hình ?nh di?n t? m?i b? sung cho phép b?n quay phim c?m tay ?n d?nh, không rung. Ð?c bi?t, phiên b?n này di kèm theo tay c?m Sony VCT-SGR1 giúp tang cu?ng ch?t lu?ng video, vô cùng lý tu?ng d? quay video du l?ch ho?c quay vlog.', NULL, N'pro                      ', N'nd                       ', N'SonyCyberShotDSC-RX0M2G01.jpg                                                                       ', NULL, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SonyCyberShotDSC-RX10M4                           ', N'Máy ảnh Sony CyberShot DSC-RX10M4', N't                        ', NULL, N'so                       ', N'jap                      ', NULL, NULL, 5, N'Máy ?nh SonyCyberShotDSC-RX10M4 là b?n nâng c?p c?c k? dáng giá. Hãng uu ái giành cho d?i tu?ng khách hàng c?n m?t m?u máy ?nh siêu zoom quang h?c nh?, g?n, linh ho?t cho m?i chuy?n du l?ch ho?c công vi?c c?a mình.', NULL, N'pro                      ', N'nd                       ', N'SonyCyberShotDSC-RX10M401.jpg                                                                       ', NULL, NULL)
INSERT [dbo].[tDanhMucSP] ([MaSP], [TenSP], [MaChatLieu], [Model], [MaHangSX], [MaNuocSX], [MaDacTinh], [Website], [ThoiGianBaoHanh], [GioiThieuSP], [ChietKhau], [MaLoai], [MaDT], [AnhDaiDien], [GiaNhoNhat], [GiaLonNhat]) VALUES (N'SonyZV-E10                                        ', N'Máy ảnh Sony ZV-E10', N'al                       ', NULL, N'so                       ', N'jap                      ', NULL, NULL, 5, N'Máy ?nh SonyZV-E10 là m?t chi?c máy ?nh vlog thú v?. V?i ch?t lu?ng hình ?nh hoàn h?o, ch?c nang vlog phong phú, màn hình xoay và micro 3 thành viên... Máy ?nh có m?i th? b?n c?n d? phát huy s?c m?nh th? hi?n ý tu?ng c?a mình.', NULL, N'pro                      ', N'nd                       ', N'SonyZV-E1001.jpg                                                                                    ', NULL, NULL)
GO
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'ca                       ', N'Canon', N'jap                      ')
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'fu                       ', N'FujiFilm', N'jap                      ')
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'mi                       ', N'Minolta', N'jap                      ')
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'ni                       ', N'Nikon', N'jap                      ')
INSERT [dbo].[tHangSX] ([MaHangSX], [HangSX], [MaNuocThuongHieu]) VALUES (N'so                       ', N'Sony', N'jap                      ')
GO
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [TongTienHD], [GiamGiaHD], [PhuongThucThanhToan], [MaSoThue], [ThongTinThue], [GhiChu], [Status]) VALUES (1, N'1/23/2023 11:52:11 AM                                                                                                                                                                                                                                          ', N'vanglongdv123@gmail.com  ', 172410000.0000, NULL, 0, NULL, NULL, N'can than', 3)
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [TongTienHD], [GiamGiaHD], [PhuongThucThanhToan], [MaSoThue], [ThongTinThue], [GhiChu], [Status]) VALUES (2, N'1/23/2023 9:35:18 PM                                                                                                                                                                                                                                           ', N'vanglongdv123@gmail.com  ', 162410000.0000, NULL, 0, NULL, NULL, N'', 2)
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [TongTienHD], [GiamGiaHD], [PhuongThucThanhToan], [MaSoThue], [ThongTinThue], [GhiChu], [Status]) VALUES (3, N'2/23/2023 9:38:13 PM                                                                                                                                                                                                                                           ', N'vanglongdv123@gmail.com  ', 92410000.0000, NULL, 0, NULL, NULL, N'', 0)
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [TongTienHD], [GiamGiaHD], [PhuongThucThanhToan], [MaSoThue], [ThongTinThue], [GhiChu], [Status]) VALUES (4, N'2/23/2023 9:41:39 PM                                                                                                                                                                                                                                           ', N'vanglongdv123@gmail.com  ', 172410000.0000, NULL, 1, NULL, NULL, N'', 3)
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [TongTienHD], [GiamGiaHD], [PhuongThucThanhToan], [MaSoThue], [ThongTinThue], [GhiChu], [Status]) VALUES (5, N'3/23/2023 9:45:02 PM                                                                                                                                                                                                                                           ', N'vanglongdv123@gmail.com  ', 81210000.0000, NULL, 0, NULL, NULL, N'', 0)
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [TongTienHD], [GiamGiaHD], [PhuongThucThanhToan], [MaSoThue], [ThongTinThue], [GhiChu], [Status]) VALUES (6, N'3/24/2023 11:59:08 PM                                                                                                                                                                                                                                          ', NULL, 527210000.0000, NULL, 0, NULL, NULL, N'123123', 0)
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [TongTienHD], [GiamGiaHD], [PhuongThucThanhToan], [MaSoThue], [ThongTinThue], [GhiChu], [Status]) VALUES (7, N'3/24/2023 11:59:36 PM                                                                                                                                                                                                                                          ', NULL, 527210000.0000, NULL, 0, NULL, NULL, N'123123', 3)
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [TongTienHD], [GiamGiaHD], [PhuongThucThanhToan], [MaSoThue], [ThongTinThue], [GhiChu], [Status]) VALUES (8, N'4/25/2023 12:03:56 AM                                                                                                                                                                                                                                          ', NULL, 527210000.0000, NULL, 0, NULL, NULL, N'123123', 3)
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [TongTienHD], [GiamGiaHD], [PhuongThucThanhToan], [MaSoThue], [ThongTinThue], [GhiChu], [Status]) VALUES (9, N'3/25/2023 12:07:41 AM                                                                                                                                                                                                                                          ', NULL, 527210000.0000, NULL, 1, NULL, NULL, N'123123', 3)
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [TongTienHD], [GiamGiaHD], [PhuongThucThanhToan], [MaSoThue], [ThongTinThue], [GhiChu], [Status]) VALUES (10, N'4/25/2023 12:08:19 AM                                                                                                                                                                                                                                          ', NULL, 527210000.0000, NULL, 0, NULL, NULL, N'123123', 0)
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [TongTienHD], [GiamGiaHD], [PhuongThucThanhToan], [MaSoThue], [ThongTinThue], [GhiChu], [Status]) VALUES (11, N'4/25/2023 12:08:41 AM                                                                                                                                                                                                                                          ', NULL, 527210000.0000, NULL, 0, NULL, NULL, N'', 3)
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [TongTienHD], [GiamGiaHD], [PhuongThucThanhToan], [MaSoThue], [ThongTinThue], [GhiChu], [Status]) VALUES (12, N'4/25/2023 12:08:59 AM                                                                                                                                                                                                                                          ', NULL, 527210000.0000, NULL, 0, NULL, NULL, N'123123', 0)
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [TongTienHD], [GiamGiaHD], [PhuongThucThanhToan], [MaSoThue], [ThongTinThue], [GhiChu], [Status]) VALUES (13, N'4/25/2023 12:48:31 AM                                                                                                                                                                                                                                          ', N'vanglongdv123@gmail.com  ', 32410000.0000, NULL, 0, NULL, NULL, N'', 3)
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [TongTienHD], [GiamGiaHD], [PhuongThucThanhToan], [MaSoThue], [ThongTinThue], [GhiChu], [Status]) VALUES (14, N'4/25/2023 12:56:18 AM                                                                                                                                                                                                                                          ', N'vanglongdv123@gmail.com  ', 96010000.0000, NULL, 0, NULL, NULL, N'', 3)
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [TongTienHD], [GiamGiaHD], [PhuongThucThanhToan], [MaSoThue], [ThongTinThue], [GhiChu], [Status]) VALUES (15, N'4/25/2023 11:09:21 AM                                                                                                                                                                                                                                          ', NULL, 2410000.0000, NULL, 1, NULL, NULL, N'123123', 0)
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [TongTienHD], [GiamGiaHD], [PhuongThucThanhToan], [MaSoThue], [ThongTinThue], [GhiChu], [Status]) VALUES (16, N'4/25/2023 11:10:53 AM                                                                                                                                                                                                                                          ', NULL, 92410000.0000, NULL, 0, NULL, NULL, N'123123', 3)
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [TongTienHD], [GiamGiaHD], [PhuongThucThanhToan], [MaSoThue], [ThongTinThue], [GhiChu], [Status]) VALUES (17, N'4/25/2023 11:24:38 AM                                                                                                                                                                                                                                          ', N'tranhuyhiep0710@gmail.com', 81210000.0000, NULL, 1, NULL, NULL, N'123123', 2)
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [TongTienHD], [GiamGiaHD], [PhuongThucThanhToan], [MaSoThue], [ThongTinThue], [GhiChu], [Status]) VALUES (18, N'4/25/2023 11:24:58 AM                                                                                                                                                                                                                                          ', N'tranhuyhiep0710@gmail.com', 32410000.0000, NULL, 0, NULL, NULL, N'', 1)
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [TongTienHD], [GiamGiaHD], [PhuongThucThanhToan], [MaSoThue], [ThongTinThue], [GhiChu], [Status]) VALUES (19, N'4/25/2023 2:58:11 PM                                                                                                                                                                                                                                           ', N'tranhuyhiep0710@gmail.com', 3610000.0000, NULL, 0, NULL, NULL, N'', 3)
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [TongTienHD], [GiamGiaHD], [PhuongThucThanhToan], [MaSoThue], [ThongTinThue], [GhiChu], [Status]) VALUES (20, N'4/25/2023 5:22:07 PM                                                                                                                                                                                                                                           ', N'tranhuyhiep0710@gmail.com', 163610000.0000, NULL, 0, NULL, NULL, N'', 2)
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [TongTienHD], [GiamGiaHD], [PhuongThucThanhToan], [MaSoThue], [ThongTinThue], [GhiChu], [Status]) VALUES (21, N'4/25/2023 5:59:13 PM                                                                                                                                                                                                                                           ', N'cheemslords@gmail.com    ', 6010000.0000, NULL, 0, NULL, NULL, N'123123', 2)
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [TongTienHD], [GiamGiaHD], [PhuongThucThanhToan], [MaSoThue], [ThongTinThue], [GhiChu], [Status]) VALUES (22, N'4/25/2023 8:01:31 PM                                                                                                                                                                                                                                           ', N'huanb906@gmail.com       ', 354810000.0000, NULL, 0, NULL, NULL, N'123123', 3)
INSERT [dbo].[tHoaDonBan] ([MaHoaDon], [NgayHoaDon], [MaKhachHang], [TongTienHD], [GiamGiaHD], [PhuongThucThanhToan], [MaSoThue], [ThongTinThue], [GhiChu], [Status]) VALUES (23, N'4/25/2023 8:02:35 PM                                                                                                                                                                                                                                           ', N'huanb906@gmail.com       ', 172410000.0000, NULL, 0, NULL, NULL, N'123123', 2)
GO
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [LoaiKhachHang], [AnhDaiDien], [GhiChu]) VALUES (N'cheemslords@gmail.com    ', N'cheemslords@gmail.com                                                                               ', N'hao thé', CAST(N'2023-04-13' AS Date), N'123123         ', N'123123', NULL, NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [LoaiKhachHang], [AnhDaiDien], [GhiChu]) VALUES (N'huanb906@gmail.com       ', N'huanb906@gmail.com                                                                                  ', N'Huấn', CAST(N'2023-04-05' AS Date), N'123123         ', N'123123', NULL, NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [LoaiKhachHang], [AnhDaiDien], [GhiChu]) VALUES (N'tranhuyhiep0710@gmail.com', N'tranhuyhiep0710@gmail.com                                                                           ', N'Trần Huy Hiệp', CAST(N'2023-04-05' AS Date), N'123123         ', N'123123', NULL, NULL, NULL)
INSERT [dbo].[tKhachHang] ([MaKhanhHang], [username], [TenKhachHang], [NgaySinh], [SoDienThoai], [DiaChi], [LoaiKhachHang], [AnhDaiDien], [GhiChu]) VALUES (N'vanglongdv123@gmail.com  ', N'vanglongdv123@gmail.com                                                                             ', N'Trần Huy Hiệp', CAST(N'2023-04-06' AS Date), N'123123         ', N'123', NULL, NULL, NULL)
GO
INSERT [dbo].[tLoaiDT] ([MaDT], [TenLoai]) VALUES (N'dl                       ', N'Du lịch')
INSERT [dbo].[tLoaiDT] ([MaDT], [TenLoai]) VALUES (N'dn                       ', N'Doanh nhân')
INSERT [dbo].[tLoaiDT] ([MaDT], [TenLoai]) VALUES (N'ls                       ', N'Lịch sự')
INSERT [dbo].[tLoaiDT] ([MaDT], [TenLoai]) VALUES (N'nd                       ', N'Năng động')
GO
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'fi                       ', N'Máy film')
INSERT [dbo].[tLoaiSP] ([MaLoai], [Loai]) VALUES (N'pro                      ', N'Máy ảnh chuyên nghiệp')
GO
INSERT [dbo].[tQuocGia] ([MaNuoc], [TenNuoc]) VALUES (N'jap                      ', N'Nhật')
INSERT [dbo].[tQuocGia] ([MaNuoc], [TenNuoc]) VALUES (N'my                       ', N'Mỹ')
GO
INSERT [dbo].[tUser] ([username], [password], [LoaiUser]) VALUES (N'admin                                                                                               ', N'1                                                                                                                                                                                                                                                               ', 0)
INSERT [dbo].[tUser] ([username], [password], [LoaiUser]) VALUES (N'cheemslords@gmail.com                                                                               ', N'123123hg                                                                                                                                                                                                                                                        ', 1)
INSERT [dbo].[tUser] ([username], [password], [LoaiUser]) VALUES (N'huanb906@gmail.com                                                                                  ', N'123123hg                                                                                                                                                                                                                                                        ', 1)
INSERT [dbo].[tUser] ([username], [password], [LoaiUser]) VALUES (N'tranhuyhiep0710@gmail.com                                                                           ', N'123123hg                                                                                                                                                                                                                                                        ', 1)
INSERT [dbo].[tUser] ([username], [password], [LoaiUser]) VALUES (N'vanglongdv123@gmail.com                                                                             ', N'123123hg                                                                                                                                                                                                                                                        ', 1)
GO
ALTER TABLE [dbo].[tAnhSP]  WITH CHECK ADD  CONSTRAINT [FK_tAnhSP_tDanhMucSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[tDanhMucSP] ([MaSP])
GO
ALTER TABLE [dbo].[tAnhSP] CHECK CONSTRAINT [FK_tAnhSP_tDanhMucSP]
GO
ALTER TABLE [dbo].[tChiTietHDB]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietHDB_tDanhMucSP] FOREIGN KEY([MaSP])
REFERENCES [dbo].[tDanhMucSP] ([MaSP])
GO
ALTER TABLE [dbo].[tChiTietHDB] CHECK CONSTRAINT [FK_tChiTietHDB_tDanhMucSP]
GO
ALTER TABLE [dbo].[tChiTietHDB]  WITH CHECK ADD  CONSTRAINT [FK_tChiTietHDB_tHoaDonBan] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[tHoaDonBan] ([MaHoaDon])
GO
ALTER TABLE [dbo].[tChiTietHDB] CHECK CONSTRAINT [FK_tChiTietHDB_tHoaDonBan]
GO
ALTER TABLE [dbo].[tDanhMucSP]  WITH CHECK ADD  CONSTRAINT [FK_tDanhMucSP_tChatLieu] FOREIGN KEY([MaChatLieu])
REFERENCES [dbo].[tChatLieu] ([MaChatLieu])
GO
ALTER TABLE [dbo].[tDanhMucSP] CHECK CONSTRAINT [FK_tDanhMucSP_tChatLieu]
GO
ALTER TABLE [dbo].[tDanhMucSP]  WITH CHECK ADD  CONSTRAINT [FK_tDanhMucSP_tHangSX] FOREIGN KEY([MaHangSX])
REFERENCES [dbo].[tHangSX] ([MaHangSX])
GO
ALTER TABLE [dbo].[tDanhMucSP] CHECK CONSTRAINT [FK_tDanhMucSP_tHangSX]
GO
ALTER TABLE [dbo].[tDanhMucSP]  WITH CHECK ADD  CONSTRAINT [FK_tDanhMucSP_tLoaiDT] FOREIGN KEY([MaDT])
REFERENCES [dbo].[tLoaiDT] ([MaDT])
GO
ALTER TABLE [dbo].[tDanhMucSP] CHECK CONSTRAINT [FK_tDanhMucSP_tLoaiDT]
GO
ALTER TABLE [dbo].[tDanhMucSP]  WITH CHECK ADD  CONSTRAINT [FK_tDanhMucSP_tLoaiSP] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[tLoaiSP] ([MaLoai])
GO
ALTER TABLE [dbo].[tDanhMucSP] CHECK CONSTRAINT [FK_tDanhMucSP_tLoaiSP]
GO
ALTER TABLE [dbo].[tDanhMucSP]  WITH CHECK ADD  CONSTRAINT [FK_tDanhMucSP_tQuocGia] FOREIGN KEY([MaNuocSX])
REFERENCES [dbo].[tQuocGia] ([MaNuoc])
GO
ALTER TABLE [dbo].[tDanhMucSP] CHECK CONSTRAINT [FK_tDanhMucSP_tQuocGia]
GO
ALTER TABLE [dbo].[tHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_tHoaDonBan_tKhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[tKhachHang] ([MaKhanhHang])
GO
ALTER TABLE [dbo].[tHoaDonBan] CHECK CONSTRAINT [FK_tHoaDonBan_tKhachHang]
GO
ALTER TABLE [dbo].[tKhachHang]  WITH CHECK ADD  CONSTRAINT [FK_tKhachHang_tUser] FOREIGN KEY([username])
REFERENCES [dbo].[tUser] ([username])
GO
ALTER TABLE [dbo].[tKhachHang] CHECK CONSTRAINT [FK_tKhachHang_tUser]
GO
USE [master]
GO
ALTER DATABASE [QLBanMayAnh] SET  READ_WRITE 
GO
