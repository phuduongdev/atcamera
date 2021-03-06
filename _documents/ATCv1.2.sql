USE [ATCameraDB]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 28/04/2019 11:39:45 ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 28/04/2019 11:39:45 ******/
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
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ctgid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 28/04/2019 11:39:45 ******/
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
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 28/04/2019 11:39:45 ******/
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
/****** Object:  Table [dbo].[OrderMaster]    Script Date: 28/04/2019 11:39:45 ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 28/04/2019 11:39:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[prdid] [varchar](50) NOT NULL,
	[createdDate] [datetime] NULL,
	[prdModel] [varchar](50) NULL,
	[prdPrice] [nchar](10) NULL,
	[prdSensor] [nvarchar](150) NULL,
	[prdResolution] [nvarchar](150) NULL,
	[prdInfraredRange] [nvarchar](150) NULL,
	[prdConnect] [nchar](10) NULL,
	[prdMemoryCard] [nchar](10) NULL,
	[prdPower] [nvarchar](150) NULL,
	[prdTemperature] [nvarchar](150) NULL,
	[prdMaterial] [nvarchar](150) NULL,
	[prdImage1] [varchar](max) NULL,
	[prdImage2] [varchar](max) NOT NULL,
	[prdImage3] [varchar](max) NULL,
	[prdDescript] [nvarchar](max) NULL,
	[prdStatus] [varchar](10) NULL,
	[typeid] [varchar](50) NOT NULL,
	[ctgid] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[prdid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 28/04/2019 11:39:45 ******/
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
/****** Object:  Table [dbo].[Type]    Script Date: 28/04/2019 11:39:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Type](
	[typeid] [varchar](50) NOT NULL,
	[typeTitle] [nvarchar](50) NULL,
	[typeStatus] [varchar](10) NULL,
	[typeDescript] [nvarchar](max) NULL,
 CONSTRAINT [PK_Collection] PRIMARY KEY CLUSTERED 
(
	[typeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Wishlist]    Script Date: 28/04/2019 11:39:45 ******/
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
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'230a037f-34b8-4a18-8e4d-f83517ea1fb8', CAST(0x0000AA3C010E7CEC AS DateTime), N'phuddddddsadsa', N'1', N'admin', N'test', N'0')
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'acc321453', NULL, N'phudd', N'123', N'admin', N'Full permission', N'0')
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'acc543647', NULL, N'chien', N'1', N'manager', N'Full permission(except create new account)', N'0')
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'e24ff119-fb5e-4d85-967c-9db82b52aa79', CAST(0x0000AA3C01166010 AS DateTime), N'phudd', N'1', N'admin', N'test', N'0')
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'e886523a-3fe3-47bc-9faf-bbcab0322d5e', CAST(0x0000AA3C0115F8CB AS DateTime), N'phudd', N'dsad', N'admin', N'test', N'0')
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgTitle], [ctgOrigin], [ctgDescript], [ctgStatus]) VALUES (N'cate012345', CAST(0x0000AA3D00BD83A0 AS DateTime), N'Recorder 5 in 1', N'US', NULL, N'1')
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgTitle], [ctgOrigin], [ctgDescript], [ctgStatus]) VALUES (N'cate123456', CAST(0x0000AA3D00BD83A0 AS DateTime), N'HD Analog Camera 1.0MP', N'US', N'teste', N'1')
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgTitle], [ctgOrigin], [ctgDescript], [ctgStatus]) VALUES (N'cate234567', CAST(0x0000AA3D00BD83A0 AS DateTime), N'HD Analog Camera 1.3MP', N'US', NULL, N'1')
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgTitle], [ctgOrigin], [ctgDescript], [ctgStatus]) VALUES (N'cate345678', CAST(0x0000AA3D00BD83A0 AS DateTime), N'HD Analog Camera 2.0MP', N'US', NULL, N'1')
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgTitle], [ctgOrigin], [ctgDescript], [ctgStatus]) VALUES (N'cate456789', CAST(0x0000AA3D00BD83A0 AS DateTime), N'Camera 4 in 1 POC 2.0MP', N'US', NULL, N'1')
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgTitle], [ctgOrigin], [ctgDescript], [ctgStatus]) VALUES (N'cate567890', CAST(0x0000AA3D00BD83A0 AS DateTime), N'HD Analog Camera 2K POC', N'US', N'Resolution 4.0 MP', N'1')
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgTitle], [ctgOrigin], [ctgDescript], [ctgStatus]) VALUES (N'cate678901', CAST(0x0000AA3D00BD83A0 AS DateTime), N'HD Analog Camera 4K ', N'US', N'Resolution 8.0MP', N'1')
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgTitle], [ctgOrigin], [ctgDescript], [ctgStatus]) VALUES (N'cate789012', CAST(0x0000AA3D00BD83A0 AS DateTime), N'IP Camera 1.0MP', N'US', NULL, N'1')
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgTitle], [ctgOrigin], [ctgDescript], [ctgStatus]) VALUES (N'cate890123', CAST(0x0000AA3D00BD83A0 AS DateTime), N'IP Camera 1.3MP', N'US', NULL, N'1')
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgTitle], [ctgOrigin], [ctgDescript], [ctgStatus]) VALUES (N'cate901234', CAST(0x0000AA3D00BD83A0 AS DateTime), N'IP Camera 2.0MP', N'US', NULL, NULL)
INSERT [dbo].[Type] ([typeid], [typeTitle], [typeStatus], [typeDescript]) VALUES (N'1', N'Camera', N'1', N'use to view direct video')
INSERT [dbo].[Type] ([typeid], [typeTitle], [typeStatus], [typeDescript]) VALUES (N'2', N'Recorder', N'1', N'controll all camera')
INSERT [dbo].[Type] ([typeid], [typeTitle], [typeStatus], [typeDescript]) VALUES (N'3', N'HDD', N'1', N'use store video')
INSERT [dbo].[Type] ([typeid], [typeTitle], [typeStatus], [typeDescript]) VALUES (N'4', N'Power', N'1', N'cap nguon cho camera')
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
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Type] FOREIGN KEY([typeid])
REFERENCES [dbo].[Type] ([typeid])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Type]
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
