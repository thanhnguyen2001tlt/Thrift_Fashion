USE [master]
GO
/****** Object:  Database [ThriftFashion]    Script Date: 14/08/2022 09:52:46 SA ******/
CREATE DATABASE [ThriftFashion]
GO
ALTER DATABASE [ThriftFashion] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ThriftFashion] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ThriftFashion] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ThriftFashion] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ThriftFashion] SET ARITHABORT OFF 
GO
ALTER DATABASE [ThriftFashion] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ThriftFashion] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ThriftFashion] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ThriftFashion] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ThriftFashion] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ThriftFashion] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ThriftFashion] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ThriftFashion] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ThriftFashion] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ThriftFashion] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ThriftFashion] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ThriftFashion] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ThriftFashion] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ThriftFashion] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ThriftFashion] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ThriftFashion] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ThriftFashion] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ThriftFashion] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ThriftFashion] SET  MULTI_USER 
GO
ALTER DATABASE [ThriftFashion] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ThriftFashion] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ThriftFashion] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ThriftFashion] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ThriftFashion] SET DELAYED_DURABILITY = DISABLED 
 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ThriftFashion', N'ON'
GO
ALTER DATABASE [ThriftFashion] SET QUERY_STORE = OFF
GO
USE [ThriftFashion]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 14/08/2022 09:52:46 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[Province] [varchar](255) NOT NULL,
	[District] [varchar](255) NOT NULL,
	[AddressDetail] [text] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 14/08/2022 09:52:46 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[BrandID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[Logo] [varchar](255) NULL,
 CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 14/08/2022 09:52:46 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CartID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[CartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 14/08/2022 09:52:46 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 14/08/2022 09:52:46 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Fullname] [varchar](255) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Phone] [varchar](15) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 14/08/2022 09:52:46 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Fullname] [varchar](255) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Phone] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 14/08/2022 09:52:46 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[FeedbackID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[ProductID] [int] NULL,
	[Description] [text] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 14/08/2022 09:52:46 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[ImageID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Name] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 14/08/2022 09:52:46 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[AddressID] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[ShipDate] [datetime] NOT NULL,
	[Total] [money] NOT NULL,
	[Note] [text] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 14/08/2022 09:52:46 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 14/08/2022 09:52:46 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[BrandID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Description] [text] NOT NULL,
	[Price] [money] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Discount] [int] NOT NULL,
	[Image] [varchar](255) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wishlist]    Script Date: 14/08/2022 09:52:46 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wishlist](
	[WishlistID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Wishlist] PRIMARY KEY CLUSTERED 
(
	[WishlistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([AddressID], [CustomerID], [Province], [District], [AddressDetail], [Status]) VALUES (1, 1, N'Can Tho', N'Ninh Kieu', N'No 1 Ly Tu Trong street', 1)
INSERT [dbo].[Address] ([AddressID], [CustomerID], [Province], [District], [AddressDetail], [Status]) VALUES (2, 1, N'Can Tho', N'Ninh Kieu', N'3/2 street', 0)
INSERT [dbo].[Address] ([AddressID], [CustomerID], [Province], [District], [AddressDetail], [Status]) VALUES (3, 1, N'Can Tho', N'Ninh Kieu', N'30/4 street', 0)
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([BrandID], [Name], [Logo]) VALUES (1, N'Uniqlo', N'Uniqlo_logo.png')
INSERT [dbo].[Brand] ([BrandID], [Name], [Logo]) VALUES (2, N'Tommy', N'Tommy_logo.png')
INSERT [dbo].[Brand] ([BrandID], [Name], [Logo]) VALUES (3, N'Polo', N'Polo_logo.png')
INSERT [dbo].[Brand] ([BrandID], [Name], [Logo]) VALUES (4, N'New Balence', N'NewBalence_Logo.png')
INSERT [dbo].[Brand] ([BrandID], [Name], [Logo]) VALUES (5, N'American Eagle', N'AmericanEagle_logo.png')
INSERT [dbo].[Brand] ([BrandID], [Name], [Logo]) VALUES (6, N'Other', N'Other_logo.png')
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (1, N'Male')
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (2, N'Female')
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (3, N'Unisex')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerID], [Username], [Password], [Fullname], [Email], [Phone], [Status]) VALUES (1, N'H01', N'97b1ea69554c8812e06d985d8ef1da0b', N'Customer H01', N'customer@gmail.com', N'0939397979', 1)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmployeeID], [Username], [Password], [Fullname], [Email], [Phone]) VALUES (1, N'H01', N'97b1ea69554c8812e06d985d8ef1da0b', N'Techwiz 3 H01', N'thriftfashion@gmail.com', N'0909797939')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([FeedbackID], [CustomerID], [ProductID], [Description], [CreatedDate]) VALUES (1, 1, 1, N'Good !', CAST(N'2022-08-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedback] ([FeedbackID], [CustomerID], [ProductID], [Description], [CreatedDate]) VALUES (4, 1, 3, N'Very Good !!!', CAST(N'2022-08-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedback] ([FeedbackID], [CustomerID], [ProductID], [Description], [CreatedDate]) VALUES (5, 1, 1, N'Very Good !!!', CAST(N'2022-08-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedback] ([FeedbackID], [CustomerID], [ProductID], [Description], [CreatedDate]) VALUES (6, 1, 4, N'Good !!!', CAST(N'2022-08-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedback] ([FeedbackID], [CustomerID], [ProductID], [Description], [CreatedDate]) VALUES (7, 1, 5, N'Good !!!!!', CAST(N'2022-08-14T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedback] ([FeedbackID], [CustomerID], [ProductID], [Description], [CreatedDate]) VALUES (8, 1, 6, N'Good', CAST(N'2022-08-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedback] ([FeedbackID], [CustomerID], [ProductID], [Description], [CreatedDate]) VALUES (9, 1, 7, N'Good', CAST(N'2022-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedback] ([FeedbackID], [CustomerID], [ProductID], [Description], [CreatedDate]) VALUES (10, 1, 8, N'Very Good !!!', CAST(N'2022-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedback] ([FeedbackID], [CustomerID], [ProductID], [Description], [CreatedDate]) VALUES (11, 1, 9, N'Very Good', CAST(N'2022-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedback] ([FeedbackID], [CustomerID], [ProductID], [Description], [CreatedDate]) VALUES (12, 1, 10, N'Good', CAST(N'2022-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedback] ([FeedbackID], [CustomerID], [ProductID], [Description], [CreatedDate]) VALUES (13, 1, 11, N'Good ', CAST(N'2021-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Feedback] ([FeedbackID], [CustomerID], [ProductID], [Description], [CreatedDate]) VALUES (14, 1, 3, N'Good ', CAST(N'2022-01-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (1, 1, N'Product1_5.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (2, 1, N'Product1_2.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (3, 1, N'Product1_3.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (5, 1, N'Product1_4.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (6, 3, N'Product2_2.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (7, 3, N'Product2_3.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (8, 3, N'Product2_4.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (9, 3, N'Product2_5.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (10, 4, N'Product3_2.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (11, 4, N'Product3_3.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (12, 4, N'Product3_4.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (13, 4, N'Product3_5.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (14, 5, N'Product4_2.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (15, 5, N'Product4_3.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (16, 5, N'Product4_4.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (17, 5, N'Product4_5.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (18, 6, N'Product5_2.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (19, 6, N'Product5_3.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (20, 6, N'Product5_4.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (21, 6, N'Product5_5.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (22, 7, N'Product6_2.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (23, 7, N'Product6_3.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (24, 7, N'Product6_4.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (25, 7, N'Product6_5.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (26, 8, N'Product7_2.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (27, 9, N'Product8_2.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (28, 9, N'Product8_3.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (29, 9, N'Product8_4.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (30, 10, N'Product9_2.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (31, 10, N'Product9_3.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (32, 10, N'Product9_4.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (33, 10, N'Product9_5.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (34, 11, N'Product10_2.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (35, 11, N'Product10_3.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (36, 11, N'Product10_4.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (37, 11, N'Product10_5.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (38, 12, N'Product11_2.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (39, 12, N'Product11_3.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (40, 11, N'Product11_4.jpg')
INSERT [dbo].[Image] ([ImageID], [ProductID], [Name]) VALUES (41, 11, N'Product11_5.jpg')
SET IDENTITY_INSERT [dbo].[Image] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [BrandID], [CategoryID], [Name], [Description], [Price], [Quantity], [Discount], [Image], [CreatedDate], [Status]) VALUES (1, 4, 3, N'NEW BALANCE T-SHIRT', N'NEW BALANCE AUTH NEW 99.9% has not been used, just missing the Tag is like just brought from the store!
COOLMA-SPORT series
Made in CHINA_full code for check!
Condition: Original, no cutlery, never used, no mistakes!
Super soft cotton material, extremely soft to wear, very elastic & absorbent, smooth to the touch, guaranteed to be satisfied.
The slim form is in full shape!
Color: COBAN BLUE salt is extremely beautiful!
New mac tag jingle + 1 genuine shell, logo on chest printed in Silver , brand name = embossed silicone full neckline, meticulous seams!', 50.0000, 100, 0, N'Product1_1.jpg', CAST(N'2022-08-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CategoryID], [Name], [Description], [Price], [Quantity], [Discount], [Image], [CreatedDate], [Status]) VALUES (3, 3, 1, N'POLO T-SHIRT', N'POLO USA New 99.9% never used - just missing the Tag is like just brought from the store!
SzL=70-80kg(V50_N57-58_D71)
Made in CHINA_full code for check!
Condition: original, never used, no defects!
Super soft cotton, cool to the touch, good elasticity, strong, absorbent, light to wear!
Form regular slim up all hiccups!
Color: GREEN is extremely luxurious!
Embroidered logo with stretch lines, Tag wearing really good!', 109.0000, 100, 5, N'Product2_1.jpg', CAST(N'2022-08-02T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CategoryID], [Name], [Description], [Price], [Quantity], [Discount], [Image], [CreatedDate], [Status]) VALUES (4, 6, 1, N'EARO - PINOPONO T-SHIRT', N'EARO - PINOPONO _ AUTH NEW 98% like new, just missing the Tag!
  Made in CHINA_full code for check!
   American Brand
  Size L=70-80kg(N55_V46_D72)
Condition: original zin, no cutlery, no silver, old, dirty or broken!
Super soft cotton, smooth to the touch, strong and elastic, good absorption, light to wear, very nice quality!
The slim form is in full shape!
Color: BLUE
Genuine Mac tag, embossed logo, beautiful print & definitely extremely, meticulously sewn!', 49.0000, 100, 10, N'Product3_1.jpg', CAST(N'2022-08-14T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CategoryID], [Name], [Description], [Price], [Quantity], [Discount], [Image], [CreatedDate], [Status]) VALUES (5, 6, 3, N'H&M LINEN SHORT', N'H&M LINEN _ AUTH NEW 98% like new
Made in BANGLADESH_full code for check
Parameter:L78->86(super stretchy)_D52_O23
Condition: original, no cutlery, no mistakes
The khaki x linen is super smooth, soft, cool to wear, light, guaranteed to be liked right away!
The slim form is in full shape!
Color: NAVY BLUE with super beautiful Fufly flower pattern!
Tag mac 1 pair of genuine shells, deep pockets + lining = thick linen', 119.0000, 100, 15, N'Product4_1.jpg', CAST(N'2022-08-10T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CategoryID], [Name], [Description], [Price], [Quantity], [Discount], [Image], [CreatedDate], [Status]) VALUES (6, 5, 1, N'EAGLE AMERICAN SHORT', N'EAGLE AMERICAN _ AUTH NEW 97% like new!
Made in BANGLADESH_full code for check
Sz30-31=L80->85_O27_D50
Condition: original, no cutlery, stained, silver, old or worn!
Thick khaki material, standing in shape, soft to the touch, not rough, not stretchy, only received from like and up!
Form slim on the pillow to a beautiful standard shape!
Color: WHITE BE is extremely bright, easy to mix, sorry!
Tag mac 1 piece, new, tinkling, wooden button + logo stamping zipper, sewing + embossed logo, deep pocket + thick lining', 209.0000, 100, 10, N'Product5_1.jpg', CAST(N'2022-08-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CategoryID], [Name], [Description], [Price], [Quantity], [Discount], [Image], [CreatedDate], [Status]) VALUES (7, 2, 1, N'TOMMY SHIRT', N'TOMMY AUTH NEW_FULL SEAL_SALE 50%
Made in CHINA_full code for check!
  American Airlines_full Bill
Only 1xxx(x elementary) Wed ~ 3 million!
Cotton is thick and smooth, absorbs well, does not stretch, is elastic but strong, challenging machine washing!
  Touch it to like it right away!', 189.0000, 100, 0, N'Product6_1.jpg', CAST(N'2022-07-22T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CategoryID], [Name], [Description], [Price], [Quantity], [Discount], [Image], [CreatedDate], [Status]) VALUES (8, 1, 3, N'UNIQLO SHIRT', N'UNIQLO AUTH Denim x Linen _NEW99.9% has not been used, only missing Tag !
   Made in BANGLADESH_full code for check!
Condition: original, no cutlery, never used, no mistakes!
Linen x cotton imitation Jeans are super beautiful, thick to stand, less wrinkled, extremely soft, good breathability, touch the eagle right away!
Form slim up xs ah!
Color: LIGHT DENIM BLUE !
New mac tag + with buttons, box bag, just floating full !', 309.0000, 100, 5, N'Product7_1.jpg', CAST(N'2022-07-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CategoryID], [Name], [Description], [Price], [Quantity], [Discount], [Image], [CreatedDate], [Status]) VALUES (9, 1, 3, N'UNIQLO SHIRT', N'UNIQLO AUTH Denim x Linen _NEW99.9% has not been used, only missing Tag !
   Made in BANGLADESH_full code for check!
Condition: original, no cutlery, never used, no mistakes!
Linen x cotton imitation Jeans are super beautiful, thick to stand, less wrinkled, extremely soft, good breathability, touch the eagle right away!
Form slim up xs ah!
Color: LIGHT DENIM BLUE !
New mac tag + with buttons, box bag, just floating full !', 409.0000, 100, 10, N'Product8_1.jpg', CAST(N'2021-08-22T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CategoryID], [Name], [Description], [Price], [Quantity], [Discount], [Image], [CreatedDate], [Status]) VALUES (10, 6, 2, N'TRUE RELIGION SHIRT', N'TRUE RELIGION AUTH NEW - Full seal Sale 50%
Made in CHINA_full code for check!
American Airlines_Full Bill
100% cotton, light and cool to wear
Nice form !
And the price is a few hundred cheaper than fake too
The market is 1xxx(x is super huge)
Price is still Best Cheap!', 409.0000, 100, 0, N'Product9_1.jpg', CAST(N'2022-08-11T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CategoryID], [Name], [Description], [Price], [Quantity], [Discount], [Image], [CreatedDate], [Status]) VALUES (11, 1, 2, N'UNIQLO SHIRT', N'UNIQLO AUTH LINEN _ NEW 99% like new, never been used, just missing the tag like just brought from the store!
          Made in CHINA_full code for check!
Condition: Original, never used, no cutlery!
Linen is super top, extremely expensive, light, cool, super soft, thick and thin, wearing only good quality!
Form slim fit to the full shape!
Color: BLACK MONSTERA trending pattern
Brand new tag + with buttons, beautiful tailoring, watermarks don''t fade!', 299.0000, 100, 0, N'Product10_1.jpg', CAST(N'2022-08-14T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Product] ([ProductID], [BrandID], [CategoryID], [Name], [Description], [Price], [Quantity], [Discount], [Image], [CreatedDate], [Status]) VALUES (12, 1, 2, N'UNIQLO SHIRT', N'UNIQLO AUTH LINEN _ NEW 99% unused, only missing Tag!
    Made in BANGLADESH_full code for check!
Condition: original, no cutlery, never used, no mistakes!
Linen is super cool, light to wear, super soft, very breathable!
The slim form is in full shape!
Color: White with blue
New mac tag, embossed logo, beautiful sewing, imitation mother of pearl buttons!', 199.0000, 100, 10, N'Product11_1.jpg', CAST(N'2022-08-13T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Customer]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Customer]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Product]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Customer]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Product]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Address] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([AddressID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Address]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Brand] FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brand] ([BrandID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Brand]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD  CONSTRAINT [FK_Wishlist_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[Wishlist] CHECK CONSTRAINT [FK_Wishlist_Customer]
GO
ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD  CONSTRAINT [FK_Wishlist_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Wishlist] CHECK CONSTRAINT [FK_Wishlist_Product]
GO
USE [master]
GO
ALTER DATABASE [ThriftFashion] SET  READ_WRITE 
GO
