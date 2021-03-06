USE [ATCameraDB]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 17/04/2019 19:24:50 ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 17/04/2019 19:24:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[ctgid] [varchar](50) NOT NULL,
	[createdDate] [datetime] NULL,
	[ctgTitle] [nvarchar](50) NULL,
	[ctgOrigin] [nvarchar](50) NULL,
	[ctgDescript] [nvarchar](max) NULL,
	[ctgStatus] [varchar](10) NULL,
	[collectionId] [int] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ctgid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Collection]    Script Date: 17/04/2019 19:24:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Collection](
	[collectionId] [int] NOT NULL,
	[collectionName] [nvarchar](50) NULL,
	[collectionStatus] [varchar](10) NULL,
	[collectionDescript] [nvarchar](max) NULL,
 CONSTRAINT [PK_Collection] PRIMARY KEY CLUSTERED 
(
	[collectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 17/04/2019 19:24:50 ******/
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
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 17/04/2019 19:24:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[oddid] [varchar](50) NOT NULL,
	[createdDate] [datetime] NULL,
	[prdid] [varchar](50) NULL,
	[oddQuantity] [int] NULL,
	[oddPrice] [float] NULL,
	[odmid] [varchar](50) NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[oddid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderMaster]    Script Date: 17/04/2019 19:24:50 ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 17/04/2019 19:24:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[prdid] [varchar](50) NOT NULL,
	[createdDate] [datetime] NOT NULL,
	[prdModel] [varchar](50) NULL,
	[prdType] [varchar](50) NULL,
	[prdSensor] [nvarchar](150) NULL,
	[prdResolution] [nvarchar](150) NULL,
	[prdInfraredRange] [nvarchar](150) NULL,
	[prdPower] [nvarchar](150) NULL,
	[prdTemperature] [nvarchar](150) NULL,
	[prdMaterial] [nvarchar](150) NULL,
	[prdImage] [varchar](max) NULL,
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
/****** Object:  Table [dbo].[Rating]    Script Date: 17/04/2019 19:24:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rating](
	[rateid] [int] NOT NULL,
	[createdDate] [datetime] NULL,
	[ratePoint] [int] IDENTITY(1,1) NOT NULL,
	[prdid] [varchar](50) NULL,
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
/****** Object:  Table [dbo].[Wishlist]    Script Date: 17/04/2019 19:24:50 ******/
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
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'acc321453', NULL, N'phu', N'1', N'admin', N'Full permission', N'1')
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'acc543647', NULL, N'chien', N'1', N'manager', N'Full permission(except create new account)', N'1')
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_Category_Collection] FOREIGN KEY([collectionId])
REFERENCES [dbo].[Collection] ([collectionId])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_Category_Collection]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_OrderMaster] FOREIGN KEY([odmid])
REFERENCES [dbo].[OrderMaster] ([odmid])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_OrderMaster]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([prdid])
REFERENCES [dbo].[Product] ([prdid])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[OrderMaster]  WITH CHECK ADD  CONSTRAINT [FK_OrderMaster_Customer] FOREIGN KEY([ctmid])
REFERENCES [dbo].[Customer] ([ctmid])
GO
ALTER TABLE [dbo].[OrderMaster] CHECK CONSTRAINT [FK_OrderMaster_Customer]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([ctgid])
REFERENCES [dbo].[Category] ([ctgid])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Customer] FOREIGN KEY([ctmid])
REFERENCES [dbo].[Customer] ([ctmid])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Customer]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Product] FOREIGN KEY([prdid])
REFERENCES [dbo].[Product] ([prdid])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Product]
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
