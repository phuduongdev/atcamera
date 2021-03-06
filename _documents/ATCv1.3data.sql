USE [ATCameraDB]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 30/04/2019 17:16:07 ******/
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
/****** Object:  Table [dbo].[Camera]    Script Date: 30/04/2019 17:16:07 ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 30/04/2019 17:16:07 ******/
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
/****** Object:  Table [dbo].[Customer]    Script Date: 30/04/2019 17:16:07 ******/
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
/****** Object:  Table [dbo].[DVR]    Script Date: 30/04/2019 17:16:07 ******/
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
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 30/04/2019 17:16:07 ******/
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
/****** Object:  Table [dbo].[OrderMaster]    Script Date: 30/04/2019 17:16:07 ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 30/04/2019 17:16:07 ******/
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
/****** Object:  Table [dbo].[Wishlish]    Script Date: 30/04/2019 17:16:07 ******/
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
/****** Object:  Table [dbo].[Wishlist]    Script Date: 30/04/2019 17:16:07 ******/
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
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'1a58d82d-4577-4e62-9034-e938fa0084f9', CAST(0x0000AA3D01227380 AS DateTime), N'phu', N'', N'manager', N'', N'1')
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'1e9c3929-eafa-44a8-8134-9c90410fbac6', CAST(0x0000AA3E012D840B AS DateTime), N'a', N'a', N'manager', N'', N'1')
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'2f2b7df0-bc56-41d5-9782-2427dd94a4f6', CAST(0x0000AA3F0116D985 AS DateTime), N'', N'a', N'manager', N'a', N'1')
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'404688c1-db84-4e2e-b374-3aa24871a6e0', CAST(0x0000AA3F011713E6 AS DateTime), N'', N'a', N'manager', N'a', N'1')
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'57d1d75b-5c11-4e36-b7c4-a04d79bab7f9', CAST(0x0000AA3E012CA437 AS DateTime), N'tét', N'tet', N'manager', N'têtst', N'1')
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'5c6f1c0a-9a30-4a47-b4c0-5daddd572379', CAST(0x0000AA3D0121AD81 AS DateTime), N'phu', N'', N'manager', N'', N'1')
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'73907c1f-378e-4504-aebd-9af1bc81c805', CAST(0x0000AA3F0116A901 AS DateTime), N'', N'a', N'manager', N'a', N'1')
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'acc321453', NULL, N'phu', N'', N'admin', N'Full permission', N'0')
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'acc543647', NULL, N'chien', N'1', N'manager', N'Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except creFull permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)ate new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)Full permission(except create new account)', N'0')
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate012345', CAST(0x0000AA3D00BD83A0 AS DateTime), N'Camera', N'HD Analog', N'US', N'1', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate123456', CAST(0x0000AA3D00BD83A0 AS DateTime), N'Camera', N'IP Camera', N'US', N'1', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate234567', CAST(0x0000AA3D00BD83A0 AS DateTime), N'Camera', N'Speed Dome', N'US', N'1', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate345678', CAST(0x0000AA3D00BD83A0 AS DateTime), N'DVR', N'ĐẦU GHI HÌNH 5 IN 1', N'US', N'1', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate789012', CAST(0x0000AA3D00BD83A0 AS DateTime), N'Camera', N'Home IP', N'US', N'1', NULL)
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'prd1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
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
