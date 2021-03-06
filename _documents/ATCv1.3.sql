USE [ATCameraDB]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 29/04/2019 18:23:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[accid] [varchar](50) NOT NULL,
	[createdDate] [datetime] NULL,
	[accUserName] [varchar](50) NULL,
	[accPassword] [varchar](150) NULL,
	[accRole] [varchar](10) NULL,
	[accDescript] [nvarchar](max) NULL,
	[accStatus] [varchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[accid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Camera]    Script Date: 29/04/2019 18:23:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Camera](
	[camid] [varchar](50) NOT NULL,
	[createdDate] [datetime] NULL,
	[camSensor] [nvarchar](150) NULL,
	[camResolution] [nvarchar](150) NULL,
	[camIR] [nvarchar](150) NULL,
	[camLen] [nvarchar](150) NULL,
	[camVideoStandard] [nvarchar](150) NULL,
	[camRecord] [nvarchar](150) NULL,
	[camTemperature] [nvarchar](150) NULL,
	[camMemory] [nvarchar](150) NULL,
	[camMaterial] [nvarchar](150) NULL,
	[prdid] [varchar](50) NULL,
 CONSTRAINT [PK_Camera] PRIMARY KEY CLUSTERED 
(
	[camid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 29/04/2019 18:23:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[ctgid] [varchar](50) NOT NULL,
	[createdDate] [datetime] NULL,
	[ctgType] [nvarchar](50) NULL,
	[ctgTitle] [nvarchar](50) NULL,
	[ctgOrigin] [nvarchar](50) NULL,
	[ctgStatus] [varchar](10) NULL,
	[ctgDescript] [nvarchar](max) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ctgid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 29/04/2019 18:23:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[ctmid] [varchar](50) NOT NULL,
	[createdDate] [datetime] NOT NULL,
	[ctmFirstName] [nvarchar](50) NULL,
	[ctmLastName] [nvarchar](50) NULL,
	[ctmAddress] [nvarchar](max) NULL,
	[ctmPhone] [varchar](20) NULL,
	[ctmEmail] [varchar](200) NULL,
	[ctmPassword] [varchar](max) NOT NULL,
	[ctmSocialToken] [varchar](max) NULL,
	[ctmDob] [date] NULL,
	[ctmImage] [varchar](max) NULL,
	[ctmDescript] [nvarchar](max) NULL,
	[ctmRole] [varchar](10) NULL,
	[ctmStatus] [varchar](50) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[ctmid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DVR]    Script Date: 29/04/2019 18:23:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DVR](
	[dvrid] [varchar](50) NOT NULL,
	[createdDate] [datetime] NULL,
	[dvrChannel] [nvarchar](150) NULL,
	[dvrInPort] [nvarchar](150) NULL,
	[dvrOutPort] [nvarchar](150) NULL,
	[dvrCompression] [nvarchar](150) NULL,
	[dvrRecord] [nvarchar](150) NULL,
	[dvrPlayback] [nvarchar](150) NULL,
	[dvrPower] [nvarchar](150) NULL,
	[prdid] [varchar](50) NULL,
 CONSTRAINT [PK_DVR] PRIMARY KEY CLUSTERED 
(
	[dvrid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 29/04/2019 18:23:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[oddid] [varchar](50) NOT NULL,
	[createdDate] [datetime] NULL,
	[oddQuantity] [int] NULL,
	[oddPrice] [float] NULL,
	[odmid] [varchar](50) NULL,
	[prdid] [varchar](50) NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[oddid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderMaster]    Script Date: 29/04/2019 18:23:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderMaster](
	[odmid] [varchar](50) NOT NULL,
	[createdDate] [datetime] NOT NULL,
	[odmTitle] [nvarchar](50) NULL,
	[odmPrice] [float] NULL,
	[odmStatus] [varchar](50) NULL,
	[ctmid] [varchar](50) NULL,
 CONSTRAINT [PK_OrderMaster] PRIMARY KEY CLUSTERED 
(
	[odmid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 29/04/2019 18:23:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[prdid] [varchar](50) NOT NULL,
	[createdDate] [datetime] NULL,
	[prdTittle] [nvarchar](50) NULL,
	[prdPower] [nvarchar](150) NULL,
	[prdWarranty] [nvarchar](50) NULL,
	[prdImage] [varchar](max) NULL,
	[prdImage2] [varchar](max) NULL,
	[prdImage3] [varchar](max) NULL,
	[prdPrice] [float] NULL,
	[prdDescript] [nvarchar](max) NULL,
	[prdStatus] [varchar](10) NULL,
	[ctgid] [varchar](50) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[prdid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Wishlish]    Script Date: 29/04/2019 18:23:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Wishlish](
	[rateid] [int] NOT NULL,
	[createdDate] [datetime] NULL,
	[ratePoint] [int] IDENTITY(1,1) NOT NULL,
	[camid] [varchar](50) NULL,
	[ctmid] [varchar](50) NULL,
	[rateDescript] [nvarchar](max) NULL,
 CONSTRAINT [PK_Rating] PRIMARY KEY CLUSTERED 
(
	[rateid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Wishlist]    Script Date: 29/04/2019 18:23:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Wishlist](
	[wishid] [int] IDENTITY(1,1) NOT NULL,
	[createdDate] [datetime] NULL,
	[prdid] [varchar](50) NULL,
	[ctmid] [varchar](50) NULL,
 CONSTRAINT [PK_Wishlist] PRIMARY KEY CLUSTERED 
(
	[wishid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Camera]  WITH CHECK ADD  CONSTRAINT [FK_Camera_Product] FOREIGN KEY([prdid])
REFERENCES [dbo].[Product] ([prdid])
GO
ALTER TABLE [dbo].[Camera] CHECK CONSTRAINT [FK_Camera_Product]
GO
ALTER TABLE [dbo].[DVR]  WITH CHECK ADD  CONSTRAINT [FK_DVR_Product] FOREIGN KEY([prdid])
REFERENCES [dbo].[Product] ([prdid])
GO
ALTER TABLE [dbo].[DVR] CHECK CONSTRAINT [FK_DVR_Product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_OrderMaster] FOREIGN KEY([odmid])
REFERENCES [dbo].[OrderMaster] ([odmid])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_OrderMaster]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_ProductSub] FOREIGN KEY([prdid])
REFERENCES [dbo].[Product] ([prdid])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_ProductSub]
GO
ALTER TABLE [dbo].[OrderMaster]  WITH CHECK ADD  CONSTRAINT [FK_OrderMaster_Customer] FOREIGN KEY([ctmid])
REFERENCES [dbo].[Customer] ([ctmid])
GO
ALTER TABLE [dbo].[OrderMaster] CHECK CONSTRAINT [FK_OrderMaster_Customer]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_ProductSub_Category] FOREIGN KEY([ctgid])
REFERENCES [dbo].[Category] ([ctgid])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_ProductSub_Category]
GO
ALTER TABLE [dbo].[Wishlish]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Customer] FOREIGN KEY([ctmid])
REFERENCES [dbo].[Customer] ([ctmid])
GO
ALTER TABLE [dbo].[Wishlish] CHECK CONSTRAINT [FK_Rating_Customer]
GO
ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD  CONSTRAINT [FK_Wishlist_Customer] FOREIGN KEY([ctmid])
REFERENCES [dbo].[Customer] ([ctmid])
GO
ALTER TABLE [dbo].[Wishlist] CHECK CONSTRAINT [FK_Wishlist_Customer]
GO
ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD  CONSTRAINT [FK_Wishlist_Product] FOREIGN KEY([prdid])
REFERENCES [dbo].[Product] ([prdid])
GO
ALTER TABLE [dbo].[Wishlist] CHECK CONSTRAINT [FK_Wishlist_Product]
GO
