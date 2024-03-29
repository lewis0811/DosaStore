USE [master]
GO
/****** Object:  Database [Dosa_Store]    Script Date: 7/12/2022 11:47:17 AM ******/
CREATE DATABASE [Dosa_Store]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Dosa_Store', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Dosa_Store.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Dosa_Store_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Dosa_Store_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Dosa_Store] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Dosa_Store].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Dosa_Store] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Dosa_Store] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Dosa_Store] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Dosa_Store] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Dosa_Store] SET ARITHABORT OFF 
GO
ALTER DATABASE [Dosa_Store] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Dosa_Store] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Dosa_Store] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Dosa_Store] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Dosa_Store] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Dosa_Store] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Dosa_Store] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Dosa_Store] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Dosa_Store] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Dosa_Store] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Dosa_Store] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Dosa_Store] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Dosa_Store] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Dosa_Store] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Dosa_Store] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Dosa_Store] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Dosa_Store] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Dosa_Store] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Dosa_Store] SET  MULTI_USER 
GO
ALTER DATABASE [Dosa_Store] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Dosa_Store] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Dosa_Store] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Dosa_Store] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Dosa_Store] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Dosa_Store] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Dosa_Store] SET QUERY_STORE = OFF
GO
USE [Dosa_Store]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/12/2022 11:47:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
 CONSTRAINT [PK__Category__3213E83F688A602B] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/12/2022 11:47:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[Total] [float] NULL,
	[Order_date] [date] NULL,
	[Note] [nvarchar](200) NULL,
	[name] [nvarchar](200) NULL,
	[phone] [varchar](10) NULL,
	[address] [nvarchar](200) NULL,
 CONSTRAINT [PK__Order__3213E83F6DE72132] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Detail]    Script Date: 7/12/2022 11:47:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[name] [nvarchar](200) NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[product_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/12/2022 11:47:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[price] [float] NOT NULL,
	[quantity] [int] NOT NULL,
	[description] [varchar](255) NULL,
	[img_url] [varchar](255) NULL,
	[created_date] [date] NOT NULL,
	[category_id] [int] NOT NULL,
 CONSTRAINT [PK__Product__3213E83F27E22E1F] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Userr]    Script Date: 7/12/2022 11:47:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Userr](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](max) NOT NULL,
	[password] [varchar](max) NOT NULL,
	[display_name] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[email] [varchar](255) NULL,
	[phone] [nvarchar](10) NULL,
	[role] [bit] NULL,
 CONSTRAINT [PK__Userr__3213E83FD1E6D4A0] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'T-shirt')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'Pant')
INSERT [dbo].[Category] ([id], [name]) VALUES (3, N'Shoes')
INSERT [dbo].[Category] ([id], [name]) VALUES (4, N'Hat')
INSERT [dbo].[Category] ([id], [name]) VALUES (5, N'Accessories')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([id], [user_id], [Total], [Order_date], [Note], [name], [phone], [address]) VALUES (1, 1, 520, CAST(N'2022-07-09' AS Date), N'', N'son', N'0123456789', N'hcm')
INSERT [dbo].[Order] ([id], [user_id], [Total], [Order_date], [Note], [name], [phone], [address]) VALUES (2, 1, 196, CAST(N'2022-07-09' AS Date), N'hcmchcm', N'son', N'0123456789', N'hcm')
INSERT [dbo].[Order] ([id], [user_id], [Total], [Order_date], [Note], [name], [phone], [address]) VALUES (3, 1, 502, CAST(N'2022-07-10' AS Date), N'Ship whenever you want', N'Ronaldo', N'0123456789', N'Portugal')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_Detail] ON 

INSERT [dbo].[Order_Detail] ([id], [order_id], [name], [price], [quantity], [product_id]) VALUES (9, 1, N'Color Camo Milo', 98, 1, 2)
INSERT [dbo].[Order_Detail] ([id], [order_id], [name], [price], [quantity], [product_id]) VALUES (10, 1, N'Color Block Bucket Hat', 113, 1, 6)
INSERT [dbo].[Order_Detail] ([id], [order_id], [name], [price], [quantity], [product_id]) VALUES (11, 1, N'BAPE STA MI #2', 309, 1, 4)
INSERT [dbo].[Order_Detail] ([id], [order_id], [name], [price], [quantity], [product_id]) VALUES (12, 2, N'Color Camo Milo', 98, 2, 2)
INSERT [dbo].[Order_Detail] ([id], [order_id], [name], [price], [quantity], [product_id]) VALUES (13, 3, N'Color Camo Milo', 98, 1, 2)
INSERT [dbo].[Order_Detail] ([id], [order_id], [name], [price], [quantity], [product_id]) VALUES (14, 3, N'Shark Denim Jeans', 404, 1, 3)
SET IDENTITY_INSERT [dbo].[Order_Detail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (2, N'Color Camo Milo', 98, 22, N'Black tee with Milo logo', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXTEM10004MIBKM/0ZXTEM10004MIBKM-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-05-28' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (3, N'Shark Denim Jeans', 404, 9, N'Shark Washed Wide Fit Denim jeans', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXJNM150002HNYX/0ZXJNM150002HNYX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-03-01' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (4, N'BAPE STA MI #2', 309, 25, N'Black High Sneaker', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXSHM191010IBKA/0ZXSHM191010IBKA-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2021-12-05' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (5, N'Ape Head Bracelet', 166, 10, N'Gold mix Silver bracelet', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXJWW282002IGDX/0ZXJWW282002IGDX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2021-10-06' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (6, N'Color Block Bucket Hat', 113, 2, N'Bucket hat', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXHTW281003IMLX/0ZXHTW281003IMLX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-06-29' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (7, N'Color Camo Side Shark', 113, 26, N'Black Tee with side Shark', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXTEM110021IBKM/0ZXTEM110021IBKM-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-06-21' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (8, N'Tie Dye By Bathing Ape Tee', 98, 7, N'Black Ape Tee', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXTEM110035IBKC/0ZXTEM110035IBKC-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-06-21' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (9, N'BAPE Kabuto Tee', 117, 23, N'Green Tee with Kabuto', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXTEMX10010IGRD/0ZXTEMX10010IGRD-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-06-21' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (10, N'A Bathing Ape 29th Anniversary', 113, 15, N'Black Tee with BAPE', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXTEMX10005IBKX/0ZXTEMX10005IBKX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-06-21' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (12, N'Shark Denim Short', 358, 4, N'Short  Denim Pant', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXSPM151002INYX/0ZXSPM151002INYX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-06-21' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (13, N'Multi Pocket Loose Fit Cargo Pants', 309, 8, N'Cargo Pant', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXPTM15203XHBKX/0ZXPTM15203XHBKX-pdp-1.JPG?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-06-21' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (16, N'BAPE STA 93 HI M2', 323, 4, N'Silver Sneaker', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXSHM191011IGYA/0ZXSHM191011IGYA-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-06-28' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (158, N'Road STA #2 M1', 338, 9, N'Cream Color Sneaker
', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXSHM191007IIVK/0ZXSHM191007IIVK-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-07' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (163, N'Solid Camo Corduroy Panel Cap', 121, 5, N'Navy Panel Cap', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXCPW280503HNYX/0ZXCPW280503HNYX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-07' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (165, N'Type 1 BAPEX® Watch', 618, 2, N'Gold Luxury  Watch', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXWHM182028HGDX/0ZXWHM182028HGDX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-07' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (169, N'Green Camo Shark Tee', 166, 27, N'Green Camo Shirt  with logo Shark', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXTEM109022IGRX/0ZXTEM109022IGRX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-07' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (171, N'Shark Sweat short', 269, 7, N'Black short with logo Bape', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXSPM15318XGBKX/0ZXSPM15318XGBKX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-07' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (172, N'ABC Camo Side Shark short', 264, 5, N'2 Side Color short', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXSPM153018IBLX/0ZXSPM153018IBLX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-07' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (173, N'1st Camo Layered L/S Tee', 175, 17, N'Long Camo Sleeve Tee ', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXLTM111009HGRD/0ZXLTM111009HGRD-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-07' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (174, N'X Heron Preston Relaxed Tee', 205, 14, N'Grey shirt with big APE logo', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXTEM109905IBKX/0ZXTEM109905IBKX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-08' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (175, N'Graphic #2 L/S Tee', 134, 6, N'Black long sleeve tee ', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXLTM111007HBKX/0ZXLTM111007HBKX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-08' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (176, N'Porter 1st Camo Long Wallet', 274, 4, N'Long camo wallet', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXSGM190925IGRX/0ZXSGM190925IGRX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-08' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (177, N'Ape Head Crystal Stone Mesh Cap', 195, 18, N'Black iron mix white cap', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXCPM180020IBKX/0ZXCPM180020IBKX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-12' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (179, N'BAPE Panel Cap', 137, 12, N'Grey Panel cap', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXCPM180007IBGX/0ZXCPM180007IBGX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-12' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (180, N'Aurora A Bathing Ape Bucket Hat', 133, 9, N'Black bucket hat', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXHTM181017IBKX/0ZXHTM181017IBKX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-12' AS Date), 4)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (181, N'Multi Fonts Sweat Shorts', 250, 7, N'Ocean blue short', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXSPM153003IBLX/0ZXSPM153003IBLX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-12' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (182, N'X Hugo Sweat Pants', 244, 19, N'Sweat Cargo Pants', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/MRBPTM152901IBKX/MRBPTM152901IBKX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-12' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (183, N'Painter Shorts', 335, 4, N'Jean Shorts', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXSPM151003IBKX/0ZXSPM151003IBKX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-12' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (184, N'X Heron Preston Mix 1st Camo Duck Painter Pants M3', 484, 15, N'Color mix camo jean pants', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXPTM152903IPPX/0ZXPTM152903IPPX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-12' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (185, N'Multi Pocket Detachable Wide Fit Pants', 335, 11, N'Grey Cargo Pants', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXPTM152010IBGX/0ZXPTM152010IBGX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-12' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (186, N'Ape Head One Point Relaxed Fit Polo', 182, 25, N'Black Polo shirt', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXPOM112015IBKX/0ZXPOM112015IBKX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-12' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (187, N'1st Camo One Point Polo', 195, 17, N'Camo Polo shirt', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXPOM112004IGRX/0ZXPOM112004IGRX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-12' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (188, N'Multi Logo Tee #1', 98, 6, N'Black Tee with Ape logo', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXTEM110062IBKX/0ZXTEM110062IBKX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-12' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (190, N'X M&N NFL Oakland Raiders Legacy Jersey', 363, 6, N'Black NFL ORLJ shirt', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXTEM109907HBKX/0ZXTEM109907HBKX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-12' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (191, N'X M&N NFL New York Giants Legacy Jersey', 363, 6, N'Blue NYGLJ shirt ', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXTEM109905HNYX/0ZXTEM109905HNYX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-12' AS Date), 1)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (192, N'BAPE STA #1 M2', 338, 15, N'Black Grey with Star logo', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXSHM91X007IGYD/0ZXSHM91X007IGYD-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-12' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (193, N'SK8 STA #4 M1', 309, 11, N'Red Grey with Star logo', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXSHM191021IWHP/0ZXSHM191021IWHP-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-12' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (195, N'Road STA #3 M2', 309, 12, N'Grey with Star logo', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXSHM191013IGYA/0ZXSHM191013IGYA-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-12' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (196, N'BAPE STA 93 HI M2', 323, 17, N'Pink mix whith High Sneaker', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXSHM191011IBGA/0ZXSHM191011IBGA-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-12' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (197, N'Bape STA X Medicom Toy Be@R Camo M1 Sneakers', 336, 23, N'White sneaker mix Graffity and Star logo', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXSHM191913HBKX/0ZXSHM191913HBKX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-12' AS Date), 3)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (198, N'Color Camo Mask set - 3 pack', 67, 20, N'Purple mask', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXACM182086GMLX/0ZXACM182086GMLX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-12' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (200, N'Bape Face Shield 1st Camo mask', 27, 21, N'Camo mask', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXACM182202FGRX/0ZXACM182202FGRX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-12' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (202, N'X Coach Phone Wallet', 431, 17, N'Pink Long wallet', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXSGW32904CHPKX/0ZXSGW32904CHPKX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-12' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (203, N'ID cardholder', 27, 18, N'Card holder with Monkey logo', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0MXAC04821839BWX/0MXAC04821839BWX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-12' AS Date), 5)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (205, N'BAPE Text Stripe Jersey Pants', 274, 10, N'Stripe Jersey Pants', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXPTM15205XHNYX/0ZXPTM15205XHNYX-pdp-1.JPG?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-12' AS Date), 2)
INSERT [dbo].[Product] ([id], [name], [price], [quantity], [description], [img_url], [created_date], [category_id]) VALUES (206, N'A Bathing Ape 29th Anniversary Tee', 113, 9, N' Black Tee with 29 logo', N'https://ithk-pro-itmall-item.oss-cn-hongkong.aliyuncs.com/2/product/0ZXTEMX10004IBKX/0ZXTEMX10004IBKX-pdp-1.jpg?x-oss-process=image/resize,m_pad,h_750,w_600/auto-orient,1/quality,Q_80', CAST(N'2022-07-12' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Userr] ON 

INSERT [dbo].[Userr] ([id], [username], [password], [display_name], [address], [email], [phone], [role]) VALUES (1, N'son', N'son', N'Son', N'hcm', N'son@gmail.com', N'0111111111', 0)
INSERT [dbo].[Userr] ([id], [username], [password], [display_name], [address], [email], [phone], [role]) VALUES (2, N'quynh', N'quynh', N'quynh', N'dak mil', N'quynh@gmail.com', N'0123456789', 0)
INSERT [dbo].[Userr] ([id], [username], [password], [display_name], [address], [email], [phone], [role]) VALUES (3, N'admin', N'admin', N'admin', N'sai gon', N'admin@admin.com', N'0999999999', 1)
INSERT [dbo].[Userr] ([id], [username], [password], [display_name], [address], [email], [phone], [role]) VALUES (5, N'thuyendeptrai', N'123', N'thuyen', N'hcm', N'thuyen@gmail.com', N'0123123123', 0)
INSERT [dbo].[Userr] ([id], [username], [password], [display_name], [address], [email], [phone], [role]) VALUES (6, N'ronaldo', N'ronaldo', N'Ronaldo', N'Portugal', N'cr7@gmail.com', N'0987654321', 0)
INSERT [dbo].[Userr] ([id], [username], [password], [display_name], [address], [email], [phone], [role]) VALUES (8, N'messi', N'messi', N'Messi', N'Argentina', N'messi@psg.com', N'0123321131', 0)
SET IDENTITY_INSERT [dbo].[Userr] OFF
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_Order_date]  DEFAULT (getdate()) FOR [Order_date]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF__Product__quantit__5EBF139D]  DEFAULT ('0') FOR [quantity]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_created_date]  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK__Order__user_id__1BC821DD] FOREIGN KEY([user_id])
REFERENCES [dbo].[Userr] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK__Order__user_id__1BC821DD]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD  CONSTRAINT [FK__Order_Det__order__1EA48E88] FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([id])
GO
ALTER TABLE [dbo].[Order_Detail] CHECK CONSTRAINT [FK__Order_Det__order__1EA48E88]
GO
ALTER TABLE [dbo].[Order_Detail]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__categor__5FB337D6] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__categor__5FB337D6]
GO
USE [master]
GO
ALTER DATABASE [Dosa_Store] SET  READ_WRITE 
GO
