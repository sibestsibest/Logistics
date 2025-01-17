USE [master]
GO
/****** Object:  Database [Logictics]    Script Date: 1/7/2021 9:50:45 PM ******/
CREATE DATABASE [Logictics]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Logictics', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Logictics.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Logictics_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Logictics_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Logictics] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Logictics].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Logictics] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Logictics] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Logictics] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Logictics] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Logictics] SET ARITHABORT OFF 
GO
ALTER DATABASE [Logictics] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Logictics] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Logictics] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Logictics] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Logictics] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Logictics] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Logictics] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Logictics] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Logictics] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Logictics] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Logictics] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Logictics] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Logictics] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Logictics] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Logictics] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Logictics] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Logictics] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Logictics] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Logictics] SET  MULTI_USER 
GO
ALTER DATABASE [Logictics] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Logictics] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Logictics] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Logictics] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Logictics] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Logictics] SET QUERY_STORE = OFF
GO
USE [Logictics]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 1/7/2021 9:50:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](100) NULL,
	[Name] [nvarchar](400) NULL,
	[CreateDate] [datetime] NULL,
	[OrderBy] [int] NULL,
	[isDelete] [bit] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 1/7/2021 9:50:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CityID] [varchar](100) NULL,
	[Code] [varchar](100) NULL,
	[Name] [nvarchar](200) NULL,
	[CountryID] [int] NOT NULL,
	[Zip/PostalCode] [int] NULL,
	[CreateDate] [datetime] NULL,
	[OrderBy] [int] NULL,
	[isDelete] [bit] NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 1/7/2021 9:50:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](100) NULL,
	[Name] [nvarchar](200) NULL,
	[Zip/PostalCode] [int] NULL,
	[CreateDate] [datetime] NULL,
	[OrderBy] [int] NULL,
	[isDelete] [bit] NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 1/7/2021 9:50:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](100) NULL,
	[Name] [nvarchar](400) NULL,
	[Adress] [nvarchar](500) NOT NULL,
	[CountryID] [int] NULL,
	[CityID] [nchar](10) NULL,
	[DistrictID] [int] NOT NULL,
	[WardID] [int] NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[CategoriesID] [int] NULL,
	[CreateDate] [datetime] NULL,
	[OrderBy] [int] NULL,
	[isDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeliveryPlace]    Script Date: 1/7/2021 9:50:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryPlace](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](100) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Tax] [int] NULL,
	[Adress] [nvarchar](500) NOT NULL,
	[CountryID] [int] NULL,
	[CityID] [int] NOT NULL,
	[DistrictID] [int] NOT NULL,
	[WardID] [int] NOT NULL,
	[Phone] [varchar](50) NULL,
	[LocationNumber] [varchar](200) NULL,
	[isDelete] [bit] NOT NULL,
	[CreateDate] [datetime] NULL,
	[OrderBy] [int] NULL,
 CONSTRAINT [PK_DeliveryPlace] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[District]    Script Date: 1/7/2021 9:50:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](100) NULL,
	[Name] [nvarchar](400) NULL,
	[LocationID] [varchar](200) NULL,
	[CityID] [int] NOT NULL,
	[isDelete] [bit] NOT NULL,
	[CreateDate] [datetime] NULL,
	[OrderBy] [int] NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Driver]    Script Date: 1/7/2021 9:50:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Driver](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](100) NULL,
	[Name] [nvarchar](400) NULL,
	[Adress] [nvarchar](500) NOT NULL,
	[CountryID] [int] NULL,
	[CityID] [nchar](10) NULL,
	[DistrictID] [int] NOT NULL,
	[WardID] [int] NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Birthday] [datetime] NULL,
	[VehicleID] [nchar](10) NULL,
	[DriverStatusID] [int] NOT NULL,
	[LocationNumber] [varchar](200) NULL,
	[AvataPicture] [nvarchar](500) NULL,
	[CMND] [int] NULL,
	[HomeTown] [nvarchar](500) NULL,
	[CreateDate] [datetime] NULL,
	[OrderBy] [int] NULL,
	[isDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Driver] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DriverStatus]    Script Date: 1/7/2021 9:50:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DriverStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](100) NULL,
	[Name] [nvarchar](400) NULL,
	[CreateDate] [datetime] NULL,
	[OrderBy] [int] NULL,
	[isDelete] [bit] NOT NULL,
 CONSTRAINT [PK_DriverStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 1/7/2021 9:50:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NULL,
	[Code] [varchar](100) NULL,
	[Name] [nvarchar](400) NULL,
	[Url] [varchar](200) NULL,
	[OrderNumber] [int] NULL,
	[CreateDate] [datetime] NULL,
	[OrderBy] [int] NULL,
	[isDelete] [bit] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlaceReceivingLoweringContainer]    Script Date: 1/7/2021 9:50:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlaceReceivingLoweringContainer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](100) NULL,
	[Name] [nvarchar](400) NULL,
	[Adress] [nvarchar](500) NOT NULL,
	[CountryID] [int] NULL,
	[CityID] [nchar](10) NULL,
	[DistrictID] [int] NOT NULL,
	[WardID] [int] NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[CategoriesID] [int] NULL,
	[LocationNumber] [varchar](200) NULL,
	[CreateDate] [datetime] NULL,
	[isDelete] [bit] NOT NULL,
	[OrderBy] [int] NULL,
 CONSTRAINT [PK_PlaceReceivingLoweringContainer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Province]    Script Date: 1/7/2021 9:50:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Province](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](200) NULL,
	[Name] [varchar](200) NULL,
	[Population] [varchar](250) NULL,
	[Area] [varchar](250) NULL,
	[CityCode] [varchar](200) NULL,
	[CityStatus] [int] NULL,
	[IsDelete] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[OrderBy] [int] NULL,
 CONSTRAINT [PK_Province] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle]    Script Date: 1/7/2021 9:50:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](100) NULL,
	[Name] [nvarchar](400) NULL,
	[Number] [nvarchar](100) NULL,
	[VehicleTypeID] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[isDelete] [bit] NOT NULL,
	[OrderBy] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehicleType]    Script Date: 1/7/2021 9:50:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](100) NULL,
	[Name] [nvarchar](400) NULL,
	[CreateDate] [datetime] NULL,
	[isDelete] [bit] NOT NULL,
	[OrderBy] [int] NULL,
 CONSTRAINT [PK_VehicleType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ward]    Script Date: 1/7/2021 9:50:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ward](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](100) NULL,
	[Name] [nvarchar](400) NULL,
	[LocationID] [varchar](200) NULL,
	[DistrictID] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[isDelete] [bit] NOT NULL,
	[OrderBy] [int] NULL,
 CONSTRAINT [PK_Ward] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (2, NULL, N'Ba-Ria', N'Ba Ria', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (3, NULL, N'Bac-Lieu', N'Bac Lieu', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (4, NULL, N'Bac-Giang', N'Bac Giang', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (5, NULL, N'Bac-Ninh', N'Bac Ninh', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (6, NULL, N'Bao-Loc', N'Bao Loc', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (7, NULL, N'Bien-Hoa', N'Bien Hoa', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (8, NULL, N'Ben-Tre', N'Ben Tre', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (9, NULL, N'Buon-Ma-Thuot', N'Buon Ma Thuot', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (10, NULL, N'Ca-Mau', N'Ca Mau', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (11, NULL, N'Cam-Pha', N'Cam Pha', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (12, NULL, N'Cao-Lanh', N'Cao Lanh', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (13, NULL, N'Da-Lat', N'Da Lat', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (14, NULL, N'Dien-Bien-Phu', N'Dien Bien Phu', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (15, NULL, N'Dong-Ha', N'Dong Ha', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (16, NULL, N'Dong-Hoi', N'Dong Hoi', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (17, NULL, N'Ha-Tinh', N'Ha Tinh', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (18, NULL, N'Ha-Long', N'Ha Long', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (19, NULL, N'Hai-Duong', N'Hai Duong', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (20, NULL, N'Hoa-Binh', N'Hoa Binh', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (21, NULL, N'Hoi-An', N'Hoi An', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (22, NULL, N'Hue', N'Hue', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (23, NULL, N'Hung-Yen', N'Hung Yen', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (24, NULL, N'Kon-Tum', N'Kon Tum', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (25, NULL, N'Lang-Son', N'Lang Son', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (26, NULL, N'Lao-Cai', N'Lao Cai', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (27, NULL, N'Long-Xuyen', N'Long Xuyen', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (28, NULL, N'Mong-Cai', N'Mong Cai', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (29, NULL, N'My-Tho', N'My Tho', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (30, NULL, N'Nam-Dinh', N'Nam Dinh', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (31, NULL, N'Ninh-Binh', N'Ninh Binh', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (32, NULL, N'Nha-Trang', N'Nha Trang', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (33, NULL, N'Cam-Ranh', N'Cam Ranh', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (34, NULL, N'Phan-Rang-Thap-Cham', N'Phan Rang-Thap Cham', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (35, NULL, N'Phan-Thiet', N'Phan Thiet', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (36, NULL, N'Phu-Ly', N'Phu Ly', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (37, NULL, N'Pleiku', N'Pleiku', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (38, NULL, N'Quang-Ngai', N'Quang Ngai', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (39, NULL, N'Quy-Nhon', N'Quy Nhon', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (40, NULL, N'Rach-Gia', N'Rach Gia', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (41, NULL, N'Soc-Trang', N'Soc Trang', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (42, NULL, N'Son-La', N'Son La', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (43, NULL, N'Tam-Ky', N'Tam Ky', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (44, NULL, N'Tan-An', N'Tan An', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (45, NULL, N'Thai-Binh', N'Thai Binh', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (46, NULL, N'Thai-Nguyen', N'Thai Nguyen', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (47, NULL, N'Thanh-Hoa', N'Thanh Hoa', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (48, NULL, N'Tra-Vinh', N'Tra Vinh', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (49, NULL, N'Tuy-Hoa', N'Tuy Hoa', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (50, NULL, N'Tuyen-Quang', N'Tuyen Quang', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (51, NULL, N'Uong-Bi', N'Uong Bi', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (52, NULL, N'Viet-Tri', N'Viet Tri', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (53, NULL, N'Vinh', N'Vinh', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (54, NULL, N'Vinh-Yen', N'Vinh Yen', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (55, NULL, N'Vinh-Long', N'Vinh Long', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (56, NULL, N'Vung-Tau', N'Vung Tau', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (57, NULL, N'Yen-Bai', N'Yen Bai', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (58, NULL, N'Can-Tho', N'Can Tho', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (59, NULL, N'Da-Nang', N'Da Nang', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (60, NULL, N'Hai-Phong', N'Hai Phong', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (61, NULL, N'Ha-Noi', N'Ha Noi', 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[City] ([ID], [CityID], [Code], [Name], [CountryID], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (62, NULL, N'Ho-Chi-Minh-City', N'Ho Chi Minh City', 1, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([ID], [Code], [Name], [Zip/PostalCode], [CreateDate], [OrderBy], [isDelete]) VALUES (1, N'VN', N'Viet Nam', 0, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[DeliveryPlace] ON 

INSERT [dbo].[DeliveryPlace] ([ID], [Code], [Name], [Tax], [Adress], [CountryID], [CityID], [DistrictID], [WardID], [Phone], [LocationNumber], [isDelete], [CreateDate], [OrderBy]) VALUES (3, N'abc', N'abc', 1231, N'69 72 quan 6', 0, 0, 0, 0, N'123123123', N'123123', 0, CAST(N'2020-10-10T22:57:15.870' AS DateTime), 0)
INSERT [dbo].[DeliveryPlace] ([ID], [Code], [Name], [Tax], [Adress], [CountryID], [CityID], [DistrictID], [WardID], [Phone], [LocationNumber], [isDelete], [CreateDate], [OrderBy]) VALUES (4, N'abc1', N'abc1', 1231, N'69 72 quan 6', 0, 0, 0, 0, N'123123123', N'123123', 0, CAST(N'2020-10-10T22:57:15.870' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[DeliveryPlace] OFF
GO
SET IDENTITY_INSERT [dbo].[Province] ON 

INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (1, N'Ba-Ria-Vung-Tau', N'Ba Ria-Vung Tau', N'122424', N'91.46', N'Ba-Ria', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (2, N'Bac-Lieu', N'Bac Lieu', N'188863', N'175.4', N'Bac-Lieu', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (3, N'Bac-Giang', N'Bac Giang', N'126810', N'32.21', N'Bac-Giang', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (4, N'Bac-Ninh', N'Bac Ninh', N'153250', N'80.28', N'Bac-Ninh', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (5, N'Lam-Dong', N'Lam Dong', N'153362', N'232.56', N'Bao-Loc', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (6, N'Dong-Nai', N'Dong Nai', N'784398', N'264.07', N'Bien-Hoa', 2, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (7, N'Ben-Tre', N'Ben Tre', N'143312', N'67.48', N'Ben-Tre', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (8, N'Dak-Lak', N'Dak Lak', N'340000', N'370', N'Buon-Ma-Thuot', 1, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (9, N'Ca-Mau', N'Ca Mau', N'204895', N'250.3', N'Ca-Mau', 2, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (10, N'Quang-Ninh', N'Quang Ninh', N'195800', N'486.4', N'Cam-Pha', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (11, N'Dong-Thap', N'Dong Thap', N'149837', N'107.195', N'Cao-Lanh', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (12, N'Lam-Dong', N'Lam Dong', N'256393', N'393.29', N'Da-Lat', 1, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (13, N'Dien-Bien', N'Dien Bien', N'70639', N'60.09', N'Dien-Bien-Phu', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (14, N'Quang-Tri', N'Quang Tri', N'93756', N'73.06', N'Dong-Ha', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (15, N'Quang-Binh', N'Quang Binh', N'103988', N'155.54', N'Dong-Hoi', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (16, N'Ha-Tinh', N'Ha Tinh', N'117546', N'56.19', N'Ha-Tinh', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (17, N'Quang-Ninh', N'Quang Ninh', N'203731', N'208.7', N'Ha-Long', 2, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (18, N'Hai-Duong', N'Hai Duong', N'187405', N'71.39', N'Hai-Duong', 2, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (19, N'Hoa-Binh', N'Hoa Binh', N'93409', N'148.2', N'Hoa-Binh', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (20, N'Quang-Nam', N'Quang Nam', N'121716', N'61.47', N'Hoi-An', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (21, N'Thua-Thien-Hue', N'Thua Thien-Hue', N'333715', N'83.3', N'Hue', 1, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (22, N'Hung-Yen', N'Hung Yen', N'121486', N'46.8', N'Hung-Yen', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (23, N'Kon-Tum', N'Kon Tum', N'137662', N'432.98', N'Kon-Tum', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (24, N'Lang-Son', N'Lang Son', N'148000', N'79', N'Lang-Son', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (25, N'Lao-Cai', N'Lao Cai', N'94192', N'221.5', N'Lao-Cai', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (26, N'An-Giang', N'An Giang', N'227300', N'106.87', N'Long-Xuyen', 2, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (27, N'Quang-Ninh', N'Quang Ninh', N'108016', N'518.28', N'Mong-Cai', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (28, N'Tien-Giang', N'Tien Giang', N'215000', N'79.8', N'My-Tho', 2, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (29, N'Nam-Dinh', N'Nam Dinh', N'191900', N'46.4', N'Nam-Dinh', 1, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (30, N'Ninh-Binh', N'Ninh Binh', N'130517', N'48.3', N'Ninh-Binh', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (31, N'Khanh-Hoa', N'Khanh Hoa', N'392279', N'251', N'Nha-Trang', 1, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (32, N'Khanh-Hoa', N'Khanh Hoa', N'128358', N'325', N'Cam-Ranh', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (33, N'Ninh-Thuan', N'Ninh Thuan', N'102941', N'79.37', N'Phan-Rang-Thap-Cham', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (34, N'Binh-Thuan', N'Binh Thuan', N'255000', N'206', N'Phan-Thiet', 2, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (35, N'Ha-Nam', N'Ha Nam', N'121350', N'34.27', N'Phu-Ly', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (36, N'Gia-Lai', N'Gia Lai', N'186763', N'260.61', N'Pleiku', 2, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (37, N'Quang-Ngai', N'Quang Ngai', N'134400', N'37.12', N'Quang-Ngai', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (38, N'Binh-Dinh', N'Binh Dinh', N'311000', N'284.28', N'Quy-Nhon', 1, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (39, N'Kien-Giang', N'Kien Giang', N'228360', N'97.75', N'Rach-Gia', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (40, N'Soc-Trang', N'Soc Trang', N'173922', N'76.15', N'Soc-Trang', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (41, N'Son-La', N'Son La', N'107282', N'324.93', N'Son-La', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (42, N'Quang-Nam', N'Quang Nam', N'120256', N'92.63', N'Tam-Ky', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (43, N'Long-An', N'Long An', N'166419', N'81.79', N'Tan-An', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (44, N'Thai-Binh', N'Thai Binh', N'186000', N'67.69', N'Thai-Binh', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (45, N'Thai-Nguyen', N'Thai Nguyen', N'330000', N'189.7', N'Thai-Nguyen', NULL, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (46, N'Thanh-Hoa', N'Thanh Hoa', N'197551', N'57.8', N'Thanh-Hoa', 2, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (47, N'Tra-Vinh', N'Tra Vinh', N'131360', N'68.03', N'Tra-Vinh', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (48, N'Phu-Yen', N'Phu Yen', N'167174', N'212.62', N'Tuy-Hoa', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (49, N'Tuyen-Quang', N'Tuyen Quang', N'110119', N'119.17', N'Tuyen-Quang', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (50, N'Quang-Ninh', N'Quang Ninh', N'170000', N'256.3', N'Uong-Bi', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (51, N'Phu-Tho', N'Phu Tho', N'277539', N'110.99', N'Viet-Tri', 1, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (52, N'Nghe-An', N'Nghe An', N'282981', N'104.98', N'Vinh', 1, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (53, N'Vinh-Phuc', N'Vinh Phuc', N'122568', N'50.8', N'Vinh-Yen', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (54, N'Vinh-Long', N'Vinh Long', N'147039', N'48.01', N'Vinh-Long', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (55, N'Ba-Ria-Vung-Tau', N'Ba Ria-Vung Tau', N'240000', N'140', N'Vung-Tau', 1, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (56, N'Yen-Bai', N'Yen Bai', N'95892', N'108.155', N'Yen-Bai', 3, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (57, N'Can-Tho', N'Can Tho', N'1.18709e+006', N'1389.6', N'Can-Tho', NULL, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (58, N'Da-Nang', N'Da Nang', N'887069', N'1255.53', N'Da-Nang', NULL, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (59, N'Hai-Phong', N'Hai Phong', N'1.8373e+006', N'1507.57', N'Hai-Phong', NULL, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (60, N'Ha-Noi', N'Ha Noi', N'6.44884e+006', N'3324.92', N'Ha-Noi', NULL, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
INSERT [dbo].[Province] ([ID], [Code], [Name], [Population], [Area], [CityCode], [CityStatus], [IsDelete], [CreateDate], [OrderBy]) VALUES (61, N'Ho-Chi-Minh-City', N'Ho Chi Minh City', N'7.16286e+006', N'2095', N'Ho-Chi-Minh-City', NULL, 0, CAST(N'2020-10-11T11:36:03.240' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Province] OFF
GO
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_OrderBy]  DEFAULT ((0)) FOR [OrderBy]
GO
ALTER TABLE [dbo].[City] ADD  CONSTRAINT [DF_City_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[City] ADD  CONSTRAINT [DF_City_OrderBy]  DEFAULT ((0)) FOR [OrderBy]
GO
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF_Country_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF_Country_OrderBy]  DEFAULT ((0)) FOR [OrderBy]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_OrderBy]  DEFAULT ((0)) FOR [OrderBy]
GO
ALTER TABLE [dbo].[DeliveryPlace] ADD  CONSTRAINT [DF_DeliveryPlace_OrderBy]  DEFAULT ((0)) FOR [OrderBy]
GO
ALTER TABLE [dbo].[District] ADD  CONSTRAINT [DF_District_OrderBy]  DEFAULT ((0)) FOR [OrderBy]
GO
ALTER TABLE [dbo].[Driver] ADD  CONSTRAINT [DF_Driver_OrderBy]  DEFAULT ((0)) FOR [OrderBy]
GO
ALTER TABLE [dbo].[DriverStatus] ADD  CONSTRAINT [DF_DriverStatus_OrderBy]  DEFAULT ((0)) FOR [OrderBy]
GO
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_isDelete]  DEFAULT ((0)) FOR [isDelete]
GO
ALTER TABLE [dbo].[PlaceReceivingLoweringContainer] ADD  CONSTRAINT [DF_PlaceReceivingLoweringContainer_OrderBy]  DEFAULT ((0)) FOR [OrderBy]
GO
ALTER TABLE [dbo].[Province] ADD  CONSTRAINT [DF_Province_IsDelete]  DEFAULT ((0)) FOR [IsDelete]
GO
ALTER TABLE [dbo].[Province] ADD  CONSTRAINT [DF_Province_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Province] ADD  CONSTRAINT [DF_Province_OrderBy]  DEFAULT ((0)) FOR [OrderBy]
GO
ALTER TABLE [dbo].[Vehicle] ADD  CONSTRAINT [DF_Vehicle_OrderBy]  DEFAULT ((0)) FOR [OrderBy]
GO
ALTER TABLE [dbo].[VehicleType] ADD  CONSTRAINT [DF_VehicleType_OrderBy]  DEFAULT ((0)) FOR [OrderBy]
GO
ALTER TABLE [dbo].[Ward] ADD  CONSTRAINT [DF_Ward_OrderBy]  DEFAULT ((0)) FOR [OrderBy]
GO
USE [master]
GO
ALTER DATABASE [Logictics] SET  READ_WRITE 
GO
