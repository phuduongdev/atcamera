create database ATCameraDB
go

USE [ATCameraDB]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/05/2019 15:25:31 ******/
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
/****** Object:  Table [dbo].[Camera]    Script Date: 10/05/2019 15:25:31 ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 10/05/2019 15:25:31 ******/
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
/****** Object:  Table [dbo].[Customer]    Script Date: 10/05/2019 15:25:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[ctmid] [varchar](50) NOT NULL,
	[createdDate] [datetime] NULL,
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
/****** Object:  Table [dbo].[DVR]    Script Date: 10/05/2019 15:25:31 ******/
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
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 10/05/2019 15:25:31 ******/
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
/****** Object:  Table [dbo].[OrderMaster]    Script Date: 10/05/2019 15:25:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrderMaster](
	[odmid] [varchar](50) NOT NULL,
	[createdDate] [datetime] NULL,
	[installationDate] [datetime] NULL,
	[odmPrice] [float] NULL,
	[odmPayments] [varchar](20) NULL,
	[odmStatus] [varchar](10) NULL,
	[odmDescript] [nvarchar](max) NULL,
	[ctmid] [varchar](50) NULL,
 CONSTRAINT [PK_OrderMaster] PRIMARY KEY CLUSTERED 
(
	[odmid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/05/2019 15:25:31 ******/
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
	[prdDiscount] [int] NULL,
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
/****** Object:  Table [dbo].[Rating]    Script Date: 10/05/2019 15:25:31 ******/
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
/****** Object:  Table [dbo].[Wishlist]    Script Date: 10/05/2019 15:25:31 ******/
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
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'0519c27a-d902-4319-9e78-28c8c93e6de0', CAST(0x0000AA490018CC08 AS DateTime), N'test', N'123', N'manager', N'', N'new')
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'0e1a4ae6-d274-48eb-a60a-b5e98eb147ed', CAST(0x0000AA4900C9ADCF AS DateTime), N'test', N'111111', N'manager', N'', N'new')
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'3c7bacc6-1251-4dc9-9a1f-c805b8e9627a', CAST(0x0000AA49001842A1 AS DateTime), N'test', N'123', N'manager', N'', N'new')
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'4767f82b-d63d-4dc9-b48d-ff256ddfc06a', CAST(0x0000AA4900DF86A8 AS DateTime), N'phuaa', N'111111', N'admin', N'', N'new')
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'5f419918-8d8d-4c37-8705-11f3ea4907e0', CAST(0x0000AA4900CC0F59 AS DateTime), N'test', N'111111', N'manager', N'', N'new')
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'634cf85c-3f77-41fa-97f2-351e564dce07', CAST(0x0000AA4900C8A70F AS DateTime), N'test', N'ytrytryt', N'manager', N'', N'new')
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'647f44ee-be5f-4b2c-a381-14bd50999892', CAST(0x0000AA4900CD4B8E AS DateTime), N'test', N'111111', N'manager', N'', N'new')
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'ac7dfbd8-52c8-42c4-b315-74e8fe2b181e', CAST(0x0000AA4900CD2425 AS DateTime), N'test', N'111111', N'manager', N'', N'new')
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'acc', CAST(0x0000AA4801726377 AS DateTime), N'test', N'2', N'man', NULL, N'active')
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'acc321453', CAST(0x0000AA3D00BD83A0 AS DateTime), N'phu', N'!23456', N'admin', N'Full permission', N'active')
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'acc543647', CAST(0x0000AA3D00BD83A0 AS DateTime), N'chien', N'123456', N'manager', N'test authen', N'active')
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'dea89000-0f23-4bfb-b5cc-6616cfd164d5', CAST(0x0000AA4900CA9B93 AS DateTime), N'test', N'111111', N'manager', N'', N'new')
INSERT [dbo].[Account] ([accid], [createdDate], [accUserName], [accPassword], [accRole], [accDescript], [accStatus]) VALUES (N'df1917a0-4fd3-440d-80a2-66f65cfb6a92', CAST(0x0000AA4900CCFC66 AS DateTime), N'test', N'111111', N'manager', N'', N'new')
INSERT [dbo].[Camera] ([camid], [createdDate], [camSensor], [camResolution], [camIR], [camLen], [camVideoStandard], [camRecord], [camTemperature], [camMemory], [camMaterial], [prdid]) VALUES (N'ca123', NULL, N'tét', N'tétr', N'tesir', N'test len', N'test video', N'test record', N'test temp', N'test mem', N'testmaterial', N'prd1')
INSERT [dbo].[Camera] ([camid], [createdDate], [camSensor], [camResolution], [camIR], [camLen], [camVideoStandard], [camRecord], [camTemperature], [camMemory], [camMaterial], [prdid]) VALUES (N'ca124', NULL, N'tét', N'tétr', N'tesir', N'test len', N'test video', N'test record', N'test temp', N'test mem', N'testmaterial', N'prd2')
INSERT [dbo].[Camera] ([camid], [createdDate], [camSensor], [camResolution], [camIR], [camLen], [camVideoStandard], [camRecord], [camTemperature], [camMemory], [camMaterial], [prdid]) VALUES (N'ca126', NULL, N'tét', N'tétr', N'tesir', N'test len', N'test video', N'test record', N'test temp', N'test mem', N'testmaterial', N'prd3')
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'32228edc-2e0c-4205-8a13-62b3a1ea7673', CAST(0x0000AA47016D1C04 AS DateTime), N'Other', N'Jack kết nối', N'', N'active', N'Dùng để kết nối dây tín hiệu và thiết bị ')
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'595f75aa-b506-49b8-bef4-ce45b378f188', CAST(0x0000AA4300F6D81A AS DateTime), N'Camera', N'Analog HD Camera KX Serials', N'KO', N'new', N'Camera san xuat tai han quoc')
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'aa07fbfa-e0a6-4673-8127-dea037f83d34', CAST(0x0000AA3F0176A39D AS DateTime), N'Other', N'Công lắp đặt', N'', N'active', N'test')
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'bc9cdd36-8579-43e1-b64a-9b8f50ed9ff5', CAST(0x0000AA40008E2682 AS DateTime), N'Other', N'Dây tín hiệu', N'Golden Link', N'active', N'Truyền tín hiệu từ camera đến DVR hoặc Modem')
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate012345', CAST(0x0000AA3D00BD83A0 AS DateTime), N'Camera', N'HD Analog', N'US', N'active', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate123456', CAST(0x0000AA3D00BD83A0 AS DateTime), N'Camera', N'IP Camera', N'US', N'active', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate234567', CAST(0x0000AA3D00BD83A0 AS DateTime), N'Camera', N'Speed Dome', N'US', N'active', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate345678', CAST(0x0000AA3D00BD83A0 AS DateTime), N'DVR', N'ĐẦU GHI HÌNH 5 IN 1', N'US', N'active', N'test sau update')
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate456789', CAST(0x0000AA3D00BD83A0 AS DateTime), N'Other', N'HDD', NULL, N'active', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate567890', CAST(0x0000AA3D00BD83A0 AS DateTime), N'Other', N'Nguồn', NULL, N'active', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate789012', CAST(0x0000AA3D00BD83A0 AS DateTime), N'Camera', N'Home IP', N'US', N'block', N'')
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'ec27fd90-df7e-44b5-947d-98a2aea02d06', CAST(0x0000AA49009C7640 AS DateTime), NULL, N'', N'', N'new', N'')
INSERT [dbo].[Customer] ([ctmid], [createdDate], [ctmFirstName], [ctmLastName], [ctmAddress], [ctmPhone], [ctmEmail], [ctmPassword], [ctmSocialToken], [ctmDob], [ctmImage], [ctmDescript], [ctmRole], [ctmStatus]) VALUES (N'test', CAST(0x0000AA4500BF19EF AS DateTime), N'test', N'test', N'test', N'23420348687', N'test@gmail.com', N'1', NULL, NULL, NULL, NULL, N'member', N'active')
INSERT [dbo].[OrderDetail] ([oddid], [createdDate], [oddQuantity], [oddPrice], [odmid], [prdid]) VALUES (N'11fbcb82-a073-4cb6-b511-f8254f681ab8', CAST(0x0000AA4500BF19EF AS DateTime), 1, 880000, N'1383cbfc-4b42-4c23-93a5-0d4d76ac0fc9', N'pr100')
INSERT [dbo].[OrderDetail] ([oddid], [createdDate], [oddQuantity], [oddPrice], [odmid], [prdid]) VALUES (N'1718de6d-ead4-4900-b84b-a2f25bc53d65', CAST(0x0000AA45000C630E AS DateTime), 1, 880000, N'f5a82182-658a-4e9e-8e70-ed529078aff1', N'pr100')
INSERT [dbo].[OrderDetail] ([oddid], [createdDate], [oddQuantity], [oddPrice], [odmid], [prdid]) VALUES (N'1b5de283-9cc2-4940-8ffc-024ac6462723', CAST(0x0000AA45000C63B7 AS DateTime), 1, 1350000, N'f5a82182-658a-4e9e-8e70-ed529078aff1', N'pr101')
INSERT [dbo].[OrderDetail] ([oddid], [createdDate], [oddQuantity], [oddPrice], [odmid], [prdid]) VALUES (N'26f6d90a-4bd4-4ba2-87e8-562dd1ab735d', CAST(0x0000AA4500BBFCFD AS DateTime), 1, 890000, N'a9a72366-052f-4dd3-ba9f-dbb6b5b55de3', N'pr10')
INSERT [dbo].[OrderDetail] ([oddid], [createdDate], [oddQuantity], [oddPrice], [odmid], [prdid]) VALUES (N'688d65f2-d447-485c-9bf5-1fdacc73ae57', CAST(0x0000AA4500BE1E7A AS DateTime), 4, 3560000, N'f8f2640e-a2cb-48e6-ade5-4714b52ba7e1', N'pr10')
INSERT [dbo].[OrderDetail] ([oddid], [createdDate], [oddQuantity], [oddPrice], [odmid], [prdid]) VALUES (N'691f956b-0d47-40f1-bb52-46568e2a3c59', CAST(0x0000AA450043FA73 AS DateTime), 2, 1760000, N'5cab339f-5968-4a8e-a252-cb356eeeb397', N'pr100')
INSERT [dbo].[OrderDetail] ([oddid], [createdDate], [oddQuantity], [oddPrice], [odmid], [prdid]) VALUES (N'6c8397dc-b129-4ab9-85c5-7d623e6da4f8', CAST(0x0000AA4500C09882 AS DateTime), 3, 7740000, N'b50449c4-8d3d-4989-9128-eb645d1da872', N'pr102')
INSERT [dbo].[OrderDetail] ([oddid], [createdDate], [oddQuantity], [oddPrice], [odmid], [prdid]) VALUES (N'769f6ef9-0e02-4ae6-8c1f-f11f88611769', CAST(0x0000AA4500B73808 AS DateTime), 1, 880000, N'f79a77ed-2244-4fb7-938c-851bf6f25b29', N'pr100')
INSERT [dbo].[OrderDetail] ([oddid], [createdDate], [oddQuantity], [oddPrice], [odmid], [prdid]) VALUES (N'83ceb8c1-b849-4913-8f18-ab337713b9ca', CAST(0x0000AA4500BD9151 AS DateTime), 1, 890000, N'a6892456-b4e2-44da-b275-caf163c27b26', N'pr10')
INSERT [dbo].[OrderDetail] ([oddid], [createdDate], [oddQuantity], [oddPrice], [odmid], [prdid]) VALUES (N'86a78fb7-1864-44dd-91af-67764d808b43', CAST(0x0000AA45004311CA AS DateTime), 8, 7120000, N'a8360189-46b7-4394-a6f1-415b683c4dc5', N'pr10')
INSERT [dbo].[OrderDetail] ([oddid], [createdDate], [oddQuantity], [oddPrice], [odmid], [prdid]) VALUES (N'9189a2b0-89ef-4657-9fac-2ae43e66f972', CAST(0x0000AA4500C08BF8 AS DateTime), 3, 2670000, N'b50449c4-8d3d-4989-9128-eb645d1da872', N'pr10')
INSERT [dbo].[OrderDetail] ([oddid], [createdDate], [oddQuantity], [oddPrice], [odmid], [prdid]) VALUES (N'c5a96abf-1fed-4778-af20-d499cf602c4d', CAST(0x0000AA4500C02BE2 AS DateTime), 7, 9450000, N'db1fe628-e4ff-46a8-9c35-4d649b326700', N'pr101')
INSERT [dbo].[OrderDetail] ([oddid], [createdDate], [oddQuantity], [oddPrice], [odmid], [prdid]) VALUES (N'cc6ecdc0-5989-4719-aa06-ab4bfb20520d', CAST(0x0000AA4500AC5CC3 AS DateTime), 6, 5340000, N'0bf60fe0-d39c-4db5-9d05-ec1c9c313b7a', N'pr10')
INSERT [dbo].[OrderMaster] ([odmid], [createdDate], [installationDate], [odmPrice], [odmPayments], [odmStatus], [odmDescript], [ctmid]) VALUES (N'0bf60fe0-d39c-4db5-9d05-ec1c9c313b7a', CAST(0x0000AA4500AD2118 AS DateTime), NULL, 5340000, N'tranfer', N'new', N'testetsteststs ts tes t setst', N'test')
INSERT [dbo].[OrderMaster] ([odmid], [createdDate], [installationDate], [odmPrice], [odmPayments], [odmStatus], [odmDescript], [ctmid]) VALUES (N'1383cbfc-4b42-4c23-93a5-0d4d76ac0fc9', CAST(0x0000AA4500BF1D18 AS DateTime), NULL, 880000, N'direct', N'new', N'testetsteststs ts tes t setst', N'test')
INSERT [dbo].[OrderMaster] ([odmid], [createdDate], [installationDate], [odmPrice], [odmPayments], [odmStatus], [odmDescript], [ctmid]) VALUES (N'5cab339f-5968-4a8e-a252-cb356eeeb397', CAST(0x0000AA45004471C0 AS DateTime), NULL, 1760000, NULL, N'new', N'testetsteststs ts tes t setst', N'test')
INSERT [dbo].[OrderMaster] ([odmid], [createdDate], [installationDate], [odmPrice], [odmPayments], [odmStatus], [odmDescript], [ctmid]) VALUES (N'a6892456-b4e2-44da-b275-caf163c27b26', CAST(0x0000AA4500BD9489 AS DateTime), NULL, 890000, NULL, N'new', N'testetsteststs ts tes t setst', N'test')
INSERT [dbo].[OrderMaster] ([odmid], [createdDate], [installationDate], [odmPrice], [odmPayments], [odmStatus], [odmDescript], [ctmid]) VALUES (N'a8360189-46b7-4394-a6f1-415b683c4dc5', CAST(0x0000AA4500433FAD AS DateTime), NULL, 7120000, NULL, N'new', N'testetsteststs ts tes t setst', N'test')
INSERT [dbo].[OrderMaster] ([odmid], [createdDate], [installationDate], [odmPrice], [odmPayments], [odmStatus], [odmDescript], [ctmid]) VALUES (N'a9a72366-052f-4dd3-ba9f-dbb6b5b55de3', CAST(0x0000AA4500BD16C0 AS DateTime), NULL, 890000, NULL, N'new', N'testetsteststs ts tes t setst', N'test')
INSERT [dbo].[OrderMaster] ([odmid], [createdDate], [installationDate], [odmPrice], [odmPayments], [odmStatus], [odmDescript], [ctmid]) VALUES (N'b50449c4-8d3d-4989-9128-eb645d1da872', CAST(0x0000AA4500C09C52 AS DateTime), NULL, 10410000, NULL, N'new', N'testetsteststs ts tes t setst', N'test')
INSERT [dbo].[OrderMaster] ([odmid], [createdDate], [installationDate], [odmPrice], [odmPayments], [odmStatus], [odmDescript], [ctmid]) VALUES (N'db1fe628-e4ff-46a8-9c35-4d649b326700', CAST(0x0000AA4500C0362D AS DateTime), NULL, 9450000, NULL, N'active', N'testetsteststs ts tes t setst', N'test')
INSERT [dbo].[OrderMaster] ([odmid], [createdDate], [installationDate], [odmPrice], [odmPayments], [odmStatus], [odmDescript], [ctmid]) VALUES (N'f5a82182-658a-4e9e-8e70-ed529078aff1', CAST(0x0000AA45000C652E AS DateTime), NULL, 2230000, N'tranfer', N'half', N'testetsteststs ts tes t setst', N'test')
INSERT [dbo].[OrderMaster] ([odmid], [createdDate], [installationDate], [odmPrice], [odmPayments], [odmStatus], [odmDescript], [ctmid]) VALUES (N'f79a77ed-2244-4fb7-938c-851bf6f25b29', CAST(0x0000AA4500BA08C3 AS DateTime), NULL, 880000, NULL, N'completed', N'testetsteststs ts tes t setst', N'test')
INSERT [dbo].[OrderMaster] ([odmid], [createdDate], [installationDate], [odmPrice], [odmPayments], [odmStatus], [odmDescript], [ctmid]) VALUES (N'f8f2640e-a2cb-48e6-ade5-4714b52ba7e1', CAST(0x0000AA4500BF05A0 AS DateTime), NULL, 3560000, NULL, N'block', N'testetsteststs ts tes t setst', N'test')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr10', NULL, N'KX-1301C', NULL, NULL, N'img/KX-1301C.jpg', N'img/KX-1301C.jpg', N'img/KX-1301C.jpg', NULL, 890000, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr100', NULL, N'KX-1302C', NULL, NULL, N'img/KX-1302C.jpg', N'img/KX-1302C.jpg', N'img/KX-1302C.jpg', NULL, 880000, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr101', NULL, N'KX-1303C4', NULL, NULL, N'img/KX-1303C4.jpg', N'img/KX-1303C4.jpg', N'img/KX-1303C4.jpg', NULL, 1350000, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr102', NULL, N'KX-1305C4', NULL, NULL, N'img/1305C4.jpg', N'img/1305C4.jpg', N'img/1305C4.jpg', NULL, 2580000, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr103', NULL, N'KX-2011C4', NULL, NULL, N'img/KX-2011C4.jpg', N'img/KX-2011C4.jpg', N'img/KX-2011C4.jpg', NULL, 920000, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr104', NULL, N'KX-2012C4', NULL, NULL, N'img/KX-2012C4.jpg', N'img/KX-2012C4.jpg', N'img/KX-2012C4.jpg', NULL, 920000, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr105', NULL, N'KX-2001C4', NULL, NULL, N'img/KX-2001C4.jpg', N'img/KX-2001C4.jpg', N'img/KX-2001C4.jpg', NULL, 1200000, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr106', NULL, N'KX-2002C4', NULL, NULL, N'img/KX-2002C4.jpg', N'img/KX-2002C4.jpg', N'img/KX-2002C4.jpg', NULL, 1200000, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr107', NULL, N'KX-2011S4', NULL, NULL, N'img/KX-2011S4.jpg', N'img/KX-2011S4.jpg', N'img/KX-2011S4.jpg', NULL, 1220000, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr108', NULL, N'KX-2012S4', NULL, NULL, N'img/KX-2012S4.jpg', N'img/KX-2012S4.jpg', N'img/KX-2012S4.jpg', NULL, 1220000, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr109', NULL, N'KX-2001S4', NULL, NULL, N'img/KX-2001S4.jpg', N'img/KX-2001S4.jpg', N'img/KX-2001S4.jpg', NULL, 1360000, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr11', NULL, N'KX-2002S4', NULL, NULL, N'img/KX-2002S4.jpg', N'img/KX-2002S4.jpg', N'img/KX-2002S4.jpg', NULL, 1360000, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr110', NULL, N'KX-2001SK4', NULL, NULL, N'img/2001SK4.jpg', N'img/2001SK4.jpg', N'img/2001SK4.jpg', NULL, 1380000, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr111', NULL, N'KX-2003C4', NULL, NULL, N'img/KX-2003C4.jpg', N'img/KX-2003C4.jpg', N'img/KX-2003C4.jpg', NULL, 1700000, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr112', NULL, N'KX-2004C4', NULL, NULL, N'img/KX-2004C4.jpg', N'img/KX-2004C4.jpg', N'img/KX-2004C4.jpg', NULL, 1620000, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr113', NULL, N'KX-2005C', NULL, NULL, N'img/KX-2005C.jpg', N'img/KX-2005C.jpg', N'img/KX-2005C.jpg', NULL, 2980000, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr114', NULL, N'KX-2001iS4', NULL, NULL, N'img/KX-2001iS4.jpg', N'img/KX-2001iS4.jpg', N'img/KX-2001iS4.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr115', NULL, N'KX-NB2001', NULL, NULL, N'img/KX-NB2001.jpg', N'img/KX-NB2001.jpg', N'img/KX-NB2001.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr116', NULL, N'KX-NB2002', NULL, NULL, N'img/KX-NB2002.jpg', N'img/KX-NB2002.jpg', N'img/KX-NB2002.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr117', NULL, N'KX-NB2003', NULL, NULL, N'img/KX-NB2003.jpg', N'img/KX-NB2003.jpg', N'img/KX-NB2003.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr118', NULL, N'KX-NB2004MC', NULL, NULL, N'img/KX-NB2004MC.jpg', N'img/KX-NB2004MC.jpg', N'img/KX-NB2004MC.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr119', NULL, N'KX-NB2005MC', NULL, NULL, N'img/KX-NB2005MC.jpg', N'img/KX-NB2005MC.jpg', N'img/KX-NB2005MC.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr12', NULL, N'KX-NB2005MC22', NULL, NULL, N'img/KX-NB2005MC22.jpg', N'img/KX-NB2005MC22.jpg', N'img/KX-NB2005MC22.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr120', NULL, N'KX-2K01iC4', NULL, NULL, N'img/KX-2K01iC4.jpg', N'img/KX-2K01iC4.jpg', N'img/KX-2K01iC4.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr121', NULL, N'KX-2K02iC4', NULL, NULL, N'img/KX-2K02iC4.jpg', N'img/KX-2K02iC4.jpg', N'img/KX-2K02iC4.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr122', NULL, N'KX-1012N', NULL, NULL, N'img/KX-1012N.jpg', N'img/KX-1012N.jpg', N'img/KX-1012N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr123', NULL, N'KX-1302N', NULL, NULL, N'img/KX-1302N.jpg', N'img/KX-1302N.jpg', N'img/KX-1302N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr124', NULL, N'KX-2K11C', NULL, NULL, N'img/KX-2K11C.jpg', N'img/KX-2K11C.jpg', N'img/KX-2K11C.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr125', NULL, N'KX-1001N', NULL, NULL, N'img/KX-1001N.jpg', N'img/KX-1001N.jpg', N'img/KX-1001N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr126', NULL, N'KX-1002N', NULL, NULL, N'img/KX-1002N.jpg', N'img/KX-1002N.jpg', N'img/KX-1002N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr127', NULL, N'KX-1311N', NULL, NULL, N'img/KX-1311N.jpg', N'img/KX-1311N.jpg', N'img/KX-1311N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr128', NULL, N'KX-1305N', NULL, NULL, N'img/KX-1305N.jpg', N'img/KX-1305N.jpg', N'img/KX-1305N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr129', NULL, N'KX-1301N', NULL, NULL, N'img/KX-1301N.jpg', N'img/KX-1301N.jpg', N'img/KX-1301N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr13', NULL, N'KX-1312N', NULL, NULL, N'img/KX-1312N.jpg', N'img/KX-1312N.jpg', N'img/KX-1312N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr130', NULL, N'KX-2K13C', NULL, NULL, N'img/KX-2K13C.jpg', N'img/KX-2K13C.jpg', N'img/KX-2K13C.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr131', NULL, N'KX-2K12CP', NULL, NULL, N'img/KX-2K12CP.jpg', N'img/KX-2K12CP.jpg', N'img/KX-2K12CP.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr132', NULL, N'KX-2K12C', NULL, NULL, N'img/KX-2K12C.jpg', N'img/KX-2K12C.jpg', N'img/KX-2K12C.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr133', NULL, N'KX-2K11CP', NULL, NULL, N'img/KX-2K11CP.jpg', N'img/KX-2K11CP.jpg', N'img/KX-2K11CP.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr134', NULL, N'KX-2K14C', NULL, NULL, N'img/KX-2K14C.jpg', N'img/KX-2K14C.jpg', N'img/KX-2K14C.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr135', NULL, N'KX-2K14CA', NULL, NULL, N'img/KX-2K14CA.jpg', N'img/KX-2K14CA.jpg', N'img/KX-2K14CA.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr136', NULL, N'KX-2K15C', NULL, NULL, N'img/KX-2K15C.jpg', N'img/KX-2K15C.jpg', N'img/KX-2K15C.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr137', NULL, N'KX-4K01C4', NULL, NULL, N'img/KX-4K01C4.jpg', N'img/KX-4K01C4.jpg', N'img/KX-4K01C4.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr138', NULL, N'KX-4K02C4', NULL, NULL, N'img/KX-4K02C4.jpg', N'img/KX-4K02C4.jpg', N'img/KX-4K02C4.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr139', NULL, N'KX-4K04MC', NULL, NULL, N'img/KX-4K04MC.jpg', N'img/KX-4K04MC.jpg', N'img/KX-4K04MC.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr14', NULL, N'KX-1011N', NULL, NULL, N'img/KX-1011N.jpg', N'img/KX-1011N.jpg', N'img/KX-1011N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr140', NULL, N'KX-1304AN', NULL, NULL, N'img/KX-1304AN.jpg', N'img/KX-1304AN.jpg', N'img/KX-1304AN.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr141', NULL, N'KX-2011N', NULL, NULL, N'img/KX-2011N.jpg', N'img/KX-2011N.jpg', N'img/KX-2011N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr142', NULL, N'KX-2012N', NULL, NULL, N'img/KX-2012N.jpg', N'img/KX-2012N.jpg', N'img/KX-2012N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr143', NULL, N'KX-2001N', NULL, NULL, N'img/KX-2001N.jpg', N'img/KX-2001N.jpg', N'img/KX-2001N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr144', NULL, N'KX-2002N', NULL, NULL, N'img/KX-2002N.jpg', N'img/KX-2002N.jpg', N'img/KX-2002N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr145', NULL, N'KX-2001SN', NULL, NULL, N'img/KX-2001SN.jpg', N'img/KX-2001SN.jpg', N'img/KX-2001SN.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr146', NULL, N'KX-2003N', NULL, NULL, N'img/KX-2003N.jpg', N'img/KX-2003N.jpg', N'img/KX-2003N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr147', NULL, N'KX-2003iAN', NULL, NULL, N'img/KX-2003iAN.jpg', N'img/KX-2003iAN.jpg', N'img/KX-2003iAN.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr148', NULL, N'KX-2004iAN', NULL, NULL, N'img/KX-2004iAN.jpg', N'img/KX-2004iAN.jpg', N'img/KX-2004iAN.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr149', NULL, N'KX-2005N', NULL, NULL, N'img/KX-2005N.jpg', N'img/KX-2005N.jpg', N'img/KX-2005N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr15', NULL, N'KX-3011N', NULL, NULL, N'img/KX-3011N.jpg', N'img/KX-3011N.jpg', N'img/KX-3011N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr150', NULL, N'KX-3012N', NULL, NULL, N'img/KX-3012N.jpg', N'img/KX-3012N.jpg', N'img/KX-3012N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr151', NULL, N'KX-3001N', NULL, NULL, N'img/KX-3001N.jpg', N'img/KX-3001N.jpg', N'img/KX-3001N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr152', NULL, N'KX-3002N', NULL, NULL, N'img/KX-3002N.jpg', N'img/KX-3002N.jpg', N'img/KX-3002N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr153', NULL, N'KX-3004AN', NULL, NULL, N'img/KX-3004AN.jpg', N'img/KX-3004AN.jpg', N'img/KX-3004AN.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr154', NULL, N'KX-3003N', NULL, NULL, N'img/KX-3003N.jpg', N'img/KX-3003N.jpg', N'img/KX-3003N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr155', NULL, N'KX-4004iMN', NULL, NULL, N'img/KX-4004iMN.jpg', N'img/KX-4004iMN.jpg', N'img/KX-4004iMN.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr156', NULL, N'KX-4005iMN', NULL, NULL, N'img/KX-4005iMN.jpg', N'img/KX-4005iMN.jpg', N'img/KX-4005iMN.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr157', NULL, N'KX-4001N', NULL, NULL, N'img/KX-4001N.jpg', N'img/KX-4001N.jpg', N'img/KX-4001N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr158', NULL, N'KX-4002N', NULL, NULL, N'img/KX-4002N.jpg', N'img/KX-4002N.jpg', N'img/KX-4002N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr159', NULL, N'KX-4002AN', NULL, NULL, N'img/KX-4002AN.jpg', N'img/KX-4002AN.jpg', N'img/KX-4002AN.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr16', NULL, N'KX-4003N', NULL, NULL, N'img/KX-4003N.jpg', N'img/KX-4003N.jpg', N'img/KX-4003N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr160', NULL, N'KX-4005MN', NULL, NULL, N'img/KX-4005MN.jpg', N'img/KX-4005MN.jpg', N'img/KX-4005MN.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr161', NULL, N'KX-8002iN', NULL, NULL, N'img/KX-8002iN.jpg', N'img/KX-8002iN.jpg', N'img/KX-8002iN.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr162', NULL, N'KX-8005iN', NULL, NULL, N'img/KX-8005iN.jpg', N'img/KX-8005iN.jpg', N'img/KX-8005iN.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr163', NULL, N'KX-8004iMN', NULL, NULL, N'img/KX-8004iMN.jpg', N'img/KX-8004iMN.jpg', N'img/KX-8004iMN.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr164', NULL, N'KX-8005iMN', NULL, NULL, N'img/KX-8005iMN.jpg', N'img/KX-8005iMN.jpg', N'img/KX-8005iMN.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr165', NULL, N'KX-3005MSN', NULL, NULL, N'img/KX-3005MSN.jpg', N'img/KX-3005MSN.jpg', N'img/KX-3005MSN.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr166', NULL, N'KX-3004MSN', NULL, NULL, N'img/KX-3004MSN.jpg', N'img/KX-3004MSN.jpg', N'img/KX-3004MSN.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr167', NULL, N'KX-2005MSN', NULL, NULL, N'img/KX-2005MSN.jpg', N'img/KX-2005MSN.jpg', N'img/KX-2005MSN.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr168', NULL, N'KX-2004MSN', NULL, NULL, N'img/KX-2004MSN.jpg', N'img/KX-2004MSN.jpg', N'img/KX-2004MSN.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr169', NULL, N'KX-1204FN', NULL, NULL, N'img/KX-1204FN.jpg', N'img/KX-1204FN.jpg', N'img/KX-1204FN.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr17', NULL, N'KX-0504FN', NULL, NULL, N'img/KX-0504FN.jpg', N'img/KX-0504FN.jpg', N'img/KX-0504FN.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr18', NULL, N'KX-2404MNL', NULL, NULL, N'img/KX-2404MNL.jpg', N'img/KX-2404MNL.jpg', N'img/KX-2404MNL.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr180', NULL, N'KX-1301WN', NULL, NULL, N'img/KX-1301WN.jpg', N'img/KX-1301WN.jpg', N'img/KX-1301WN.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr181', NULL, N'KX-1302WPN', NULL, NULL, N'img/KX-1302WPN.jpg', N'img/KX-1302WPN.jpg', N'img/KX-1302WPN.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr182', NULL, N'KX-1302WN', NULL, NULL, N'img/KX-1302WN.jpg', N'img/KX-1302WN.jpg', N'img/KX-1302WN.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr183', NULL, N'KX-3001WN', NULL, NULL, N'img/KX-3001WN.jpg', N'img/KX-3001WN.jpg', N'img/KX-3001WN.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr184', NULL, N'KX-3002WN', NULL, NULL, N'img/KX-3002WN.jpg', N'img/KX-3002WN.jpg', N'img/KX-3002WN.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr185', NULL, N'KX-H10PWN', NULL, NULL, N'img/KX-H10PWN.jpg', N'img/KX-H10PWN.jpg', N'img/KX-H10PWN.jpg', NULL, NULL, NULL, NULL, N'cate789012')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr186', NULL, N'KX-H13PWN', NULL, NULL, N'img/KX-H13PWN.jpg', N'img/KX-H13PWN.jpg', N'img/KX-H13PWN.jpg', NULL, NULL, NULL, NULL, N'cate789012')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr187', NULL, N'KX-H20PWN', NULL, NULL, N'img/KX-H20PWN.jpg', N'img/KX-H20PWN.jpg', N'img/KX-H20PWN.jpg', NULL, NULL, NULL, NULL, N'cate789012')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr188', NULL, N'KX-H30PWN', NULL, NULL, N'img/KX-H30PWN.jpg', N'img/KX-H30PWN.jpg', N'img/KX-H30PWN.jpg', NULL, NULL, NULL, NULL, N'cate789012')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr189', NULL, N'KX-H10WN', NULL, NULL, N'img/KX-H10WN.jpg', N'img/KX-H10WN.jpg', N'img/KX-H10WN.jpg', NULL, NULL, NULL, NULL, N'cate789012')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr19', NULL, N'KX-H13WN', NULL, NULL, N'img/KX-H13WN.jpg', N'img/KX-H13WN.jpg', N'img/KX-H13WN.jpg', NULL, NULL, NULL, NULL, N'cate789012')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr190', NULL, N'KX-H30WN', NULL, NULL, N'img/KX-H30WN.jpg', N'img/KX-H30WN.jpg', N'img/KX-H30WN.jpg', NULL, NULL, NULL, NULL, N'cate789012')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr191', NULL, N'KX-2007ePC', NULL, NULL, N'img/KX-2007ePC.jpg', N'img/KX-2007ePC.jpg', N'img/KX-2007ePC.jpg', NULL, NULL, NULL, NULL, N'cate234567')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr192', NULL, N'KX-2307PC', NULL, NULL, N'img/KX-2307PC.jpg', N'img/KX-2307PC.jpg', N'img/KX-2307PC.jpg', NULL, NULL, NULL, NULL, N'cate234567')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr193', NULL, N'KX-100CK', NULL, NULL, N'img/KX-100CK.jpg', N'img/KX-100CK.jpg', N'img/KX-100CK.jpg', NULL, NULL, NULL, NULL, N'cate234567')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr194', NULL, N'KX-2007sPN', NULL, NULL, N'img/KX-2007sPN.jpg', N'img/KX-2007sPN.jpg', N'img/KX-2007sPN.jpg', NULL, NULL, NULL, NULL, N'cate234567')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr195', NULL, N'KX-2007IRPN', NULL, NULL, N'img/KX-2007IRPN.jpg', N'img/KX-2007IRPN.jpg', N'img/KX-2007IRPN.jpg', NULL, NULL, NULL, NULL, N'cate234567')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr196', NULL, N'KX-2007PN', NULL, NULL, N'img/KX-2007PN.jpg', N'img/KX-2007PN.jpg', N'img/KX-2007PN.jpg', NULL, NULL, NULL, NULL, N'cate234567')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr197', NULL, N'KX-2007ePN', NULL, NULL, N'img/KX-2007ePN.jpg', N'img/KX-2007ePN.jpg', N'img/KX-2007ePN.jpg', NULL, NULL, NULL, NULL, N'cate234567')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr198', NULL, N'KX-2008ePN', NULL, NULL, N'img/KX-2008ePN.jpg', N'img/KX-2008ePN.jpg', N'img/KX-2008ePN.jpg', NULL, NULL, NULL, NULL, N'cate234567')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr199', NULL, N'KX-2008PN', NULL, NULL, N'img/KX-2008PN.jpg', N'img/KX-2008PN.jpg', N'img/KX-2008PN.jpg', NULL, NULL, NULL, NULL, N'cate234567')
GO
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr20', NULL, N'KX-2308PN', NULL, NULL, N'img/KX-2308PN.jpg', N'img/KX-2308PN.jpg', N'img/KX-2308PN.jpg', NULL, NULL, NULL, NULL, N'cate234567')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr21', NULL, N'KX-2308IRSN', NULL, NULL, N'img/KX-2308IRSN.jpg', N'img/KX-2308IRSN.jpg', N'img/KX-2308IRSN.jpg', NULL, NULL, NULL, NULL, N'cate234567')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr22', NULL, N'KX-2458IRSN', NULL, NULL, N'img/KX-2458IRSN.jpg', N'img/KX-2458IRSN.jpg', N'img/KX-2458IRSN.jpg', NULL, NULL, NULL, NULL, N'cate234567')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr23', NULL, N'KX-8308IRPN', NULL, NULL, N'img/KX-8308IRPN.jpg', N'img/KX-8308IRPN.jpg', N'img/KX-8308IRPN.jpg', NULL, NULL, NULL, NULL, N'cate234567')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr24', NULL, N'KX-100NK', NULL, NULL, N'img/KX-100NK.jpg', N'img/KX-100NK.jpg', N'img/KX-100NK.jpg', NULL, NULL, NULL, NULL, N'cate234567')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr25', NULL, N'KX-2007PC', NULL, NULL, N'img/KX-2007PC.jpg', N'img/KX-2007PC.jpg', N'img/KX-2007PC.jpg', NULL, NULL, NULL, NULL, N'cate234567')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr26', NULL, N'KX-7104TD6', NULL, NULL, N'img/KX-7104TD6.jpg', N'img/KX-7104TD6.jpg', N'img/KX-7104TD6.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr27', NULL, N'KX-7104D6', NULL, NULL, N'img/KX-7104D6.jpg', N'img/KX-7104D6.jpg', N'img/KX-7104D6.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr28', NULL, N'KX-7108TD6', NULL, NULL, N'img/KX-7108TD6.jpg', N'img/KX-7108TD6.jpg', N'img/KX-7108TD6.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr29', NULL, N'KX-7108D6', NULL, NULL, N'img/KX-7108D6.jpg', N'img/KX-7108D6.jpg', N'img/KX-7108D6.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr30', NULL, N'KX-7116D6', NULL, NULL, N'img/KX-7116D6.jpg', N'img/KX-7116D6.jpg', N'img/KX-7116D6.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr31', NULL, N'KX-7216D5', NULL, NULL, N'img/KX-7216D5.jpg', N'img/KX-7216D5.jpg', N'img/KX-7216D5.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr32', NULL, N'KX-7216D6', NULL, NULL, N'img/KX-7216D6.jpg', N'img/KX-7216D6.jpg', N'img/KX-7216D6.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr33', NULL, N'KX-7232D6', NULL, NULL, N'img/KX-7232D6.jpg', N'img/KX-7232D6.jpg', N'img/KX-7232D6.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr34', NULL, N'KX-8104D6', NULL, NULL, N'img/KX-8104D6.jpg', N'img/KX-8104D6.jpg', N'img/KX-8104D6.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr35', NULL, N'KX-8116D6', NULL, NULL, N'img/KX-8116D6.jpg', N'img/KX-8116D6.jpg', N'img/KX-8116D6.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr36', NULL, N'KX-8216D6', NULL, NULL, N'img/KX-8216D6.jpg', N'img/KX-8216D6.jpg', N'img/KX-8216D6.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr37', NULL, N'KX-8416D5', NULL, NULL, N'img/KX-8416D5.jpg', N'img/KX-8416D5.jpg', N'img/KX-8416D5.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr38', NULL, N'KX-8816D5', NULL, NULL, N'img/KX-8816D5.jpg', N'img/KX-8816D5.jpg', N'img/KX-8816D5.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr39', NULL, N'KX-8832D5', NULL, NULL, N'img/KX-8832D5.jpg', N'img/KX-8832D5.jpg', N'img/KX-8832D5.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr40', NULL, N'KX-8104H1', NULL, NULL, N'img/KX-8104H1.jpg', N'img/KX-8104H1.jpg', N'img/KX-8104H1.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr41', NULL, N'KX-8108H1', NULL, NULL, N'img/KX-8108H1.jpg', N'img/KX-8108H1.jpg', N'img/KX-8108H1.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr42', NULL, N'KX-8116H1', NULL, NULL, N'img/KX-8116H1.jpg', N'img/KX-8116H1.jpg', N'img/KX-8116H1.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr43', NULL, N'KX-8216H1', NULL, NULL, N'img/KX-8216H1.jpg', N'img/KX-8216H1.jpg', N'img/KX-8216H1.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr44', NULL, N'KX-8232H1', NULL, NULL, N'img/KX-8232H1.jpg', N'img/KX-8232H1.jpg', N'img/KX-8232H1.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr45', NULL, N'KX-2K8104D5', NULL, NULL, N'img/KX-2K8104D5.jpg', N'img/KX-2K8104D5.jpg', N'img/KX-2K8104D5.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr46', NULL, N'KX-2K8108D5', NULL, NULL, N'img/KX-2K8108D5.jpg', N'img/KX-2K8108D5.jpg', N'img/KX-2K8108D5.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr47', NULL, N'KX-2K8204D5', NULL, NULL, N'img/KX-2K8204D5.jpg', N'img/KX-2K8204D5.jpg', N'img/KX-2K8204D5.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr48', NULL, N'KX-2K8216D5', NULL, NULL, N'img/KX-2K8216D5.jpg', N'img/KX-2K8216D5.jpg', N'img/KX-2K8216D5.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr49', NULL, N'KX-4K8104H1', NULL, NULL, N'img/KX-4K8104H1.jpg', N'img/KX-4K8104H1.jpg', N'img/KX-4K8104H1.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr50', NULL, N'KX-4K8108H1', NULL, NULL, N'img/KX-4K8108H1.jpg', N'img/KX-4K8108H1.jpg', N'img/KX-4K8108H1.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr51', NULL, N'KX-4K8108DP6', NULL, NULL, N'img/KX-4K8108DP6.jpg', N'img/KX-4K8108DP6.jpg', N'img/KX-4K8108DP6.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr52', NULL, N'KX-8104N2', NULL, NULL, N'img/KX-8104N2.jpg', N'img/KX-8104N2.jpg', N'img/KX-8104N2.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr53', NULL, N'KX-8104WN2', NULL, NULL, N'img/KX-8104WN2.jpg', N'img/KX-8104WN2.jpg', N'img/KX-8104WN2.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr54', NULL, N'KX-8108N2', NULL, NULL, N'img/KX-8108N2.jpg', N'img/KX-8108N2.jpg', N'img/KX-8108N2.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr55', NULL, N'KX-4K8104N2', NULL, NULL, N'img/KX-4K8104N2.jpg', N'img/KX-4K8104N2.jpg', N'img/KX-4K8104N2.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr56', NULL, N'KX-4K8108N2', NULL, NULL, N'img/KX-4K8108N2.jpg', N'img/KX-4K8108N2.jpg', N'img/KX-4K8108N2.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr57', NULL, N'KX-4K8116N2', NULL, NULL, N'img/KX-4K8116N2.jpg', N'img/KX-4K8116N2.jpg', N'img/KX-4K8116N2.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr58', NULL, N'KX-4K8216N2', NULL, NULL, N'img/KX-4K8216N2.jpg', N'img/KX-4K8216N2.jpg', N'img/KX-4K8216N2.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr59', NULL, N'KX-4K8416N2', NULL, NULL, N'img/KX-4K8416N2.jpg', N'img/KX-4K8416N2.jpg', N'img/KX-4K8416N2.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr60', NULL, N'KX-4K8816N2', NULL, NULL, N'img/KX-4K8816N2.jpg', N'img/KX-4K8816N2.jpg', N'img/KX-4K8816N2.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr61', NULL, N'KX-4K8816N3', NULL, NULL, N'img/KX-4K8816N3.jpg', N'img/KX-4K8816N3.jpg', N'img/KX-4K8816N3.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr62', NULL, N'KX-4K8232N2', NULL, NULL, N'img/KX-4K8232N2.jpg', N'img/KX-4K8232N2.jpg', N'img/KX-4K8232N2.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr63', NULL, N'KX-4K8232N2', NULL, NULL, N'img/KX-4K8232N2.jpg', N'img/KX-4K8232N2.jpg', N'img/KX-4K8232N2.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr64', NULL, N'KX-4K8832N2', NULL, NULL, N'img/KX-4K8832N2.jpg', N'img/KX-4K8832N2.jpg', N'img/KX-4K8832N2.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr65', NULL, N'KX-4K8832N3', NULL, NULL, N'img/KX-4K8832N3.png', N'img/KX-4K8832N3.png', N'img/KX-4K8832N3.png', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr66', NULL, N'KX-4K8832N4', NULL, NULL, N'img/KX-4K8832N4.jpg', N'img/KX-4K8832N4.jpg', N'img/KX-4K8832N4.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr67', NULL, N'KX-4K8864N3', NULL, NULL, N'img/KX-4K8864N3.jpg', N'img/KX-4K8864N3.jpg', N'img/KX-4K8864N3.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr68', NULL, N'KX-8102C4', NULL, NULL, N'img/KX-8102C4.jpg', N'img/KX-8102C4.jpg', N'img/KX-8102C4.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr69', NULL, N'KX-8101C4', NULL, NULL, N'img/KX-8101C4.jpg', N'img/KX-8101C4.jpg', N'img/KX-8101C4.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr70', NULL, N'KX-8101S4', NULL, NULL, N'img/KX-8101S4.jpg', N'img/KX-8101S4.jpg', N'img/KX-8101S4.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr71', NULL, N'KX-8102S4', NULL, NULL, N'img/KX-8102S4.jpg', N'img/KX-8102S4.jpg', N'img/KX-8102S4.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr72', NULL, N'KX-8131C4', NULL, NULL, N'img/KX-8131C4.jpg', N'img/KX-8131C4.jpg', N'img/KX-8131C4.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr73', NULL, N'KX-8132C4', NULL, NULL, N'img/KX-8132C4.jpg', N'img/KX-8132C4.jpg', N'img/KX-8132C4.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr74', NULL, N'KX-8133S4', NULL, NULL, N'img/KX-8133S4.jpg', N'img/KX-8133S4.jpg', N'img/KX-8133S4.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr75', NULL, N'KX-8201C4', NULL, NULL, N'img/KX-8201C4.jpg', N'img/KX-8201C4.jpg', N'img/KX-8201C4.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr76', NULL, N'KX-8202S4', NULL, NULL, N'img/KX-8202S4.jpg', N'img/KX-8202S4.jpg', N'img/KX-8202S4.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr77', NULL, N'KX-8131C4', NULL, NULL, N'img/KX-8131C4.jpg', N'img/KX-8131C4.jpg', N'img/KX-8131C4.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr78', NULL, N'KX-8132C4', NULL, NULL, N'img/KX-8132C4.jpg', N'img/KX-8132C4.jpg', N'img/KX-8132C4.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr79', NULL, N'KX-8133S4', NULL, NULL, N'img/KX-8133S4.jpg', N'img/KX-8133S4.jpg', N'img/KX-8133S4.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr80', NULL, N'KX-8201C4', NULL, NULL, N'img/KX-8201C4.jpg', N'img/KX-8201C4.jpg', N'img/KX-8201C4.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr81', NULL, N'KX-8202C4', NULL, NULL, N'img/KX-8202C4.jpg', N'img/KX-8202C4.jpg', N'img/KX-8202C4.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr82', NULL, N'KX-8201S4', NULL, NULL, N'img/KX-8201S4.jpg', N'img/KX-8201S4.jpg', N'img/KX-8201S4.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr83', NULL, N'KX-8202S4', NULL, NULL, N'img/KX-8202S4.jpg', N'img/KX-8202S4.jpg', N'img/KX-8202S4.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr84', NULL, N'KX-8203S4', NULL, NULL, N'img/KX-8203S4.jpg', N'img/KX-8203S4.jpg', N'img/KX-8203S4.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr85', NULL, N'KX-8204S4', NULL, NULL, N'img/KX-8204S4.jpg', N'img/KX-8204S4.jpg', N'img/KX-8204S4.jpg', NULL, NULL, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr86', NULL, N'KX-8101N', NULL, NULL, N'img/KX-8101N.jpg', N'img/KX-8101N.jpg', N'img/KX-8101N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr87', NULL, N'KX-8102N', NULL, NULL, N'img/KX-8102N.jpg', N'img/KX-8102N.jpg', N'img/KX-8102N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr88', NULL, N'KX-8131N', NULL, NULL, N'img/KX-8131N.jpg', N'img/KX-8131N.jpg', N'img/KX-8131N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr89', NULL, N'KX-8132N', NULL, NULL, N'img/KX-8132N.jpg', N'img/KX-8132N.jpg', N'img/KX-8132N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr9', NULL, N'KX-8201N', NULL, NULL, N'img/KX-8201N.jpg', N'img/KX-8201N.jpg', N'img/KX-8201N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr90', NULL, N'KX-8202N', NULL, NULL, N'img/KX-8202N.jpg', N'img/KX-8202N.jpg', N'img/KX-8202N.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr91', NULL, N'KX-X104C', NULL, NULL, N'img/KX-X104C.jpg', N'img/KX-X104C.jpg', N'img/KX-X104C.jpg', NULL, NULL, NULL, NULL, N'cate123456')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr92', NULL, N'KX-X108C', NULL, NULL, N'img/KX-X108C.jpg', N'img/KX-X108C.jpg', N'img/KX-X108C.jpg', NULL, NULL, NULL, NULL, N'cate345678')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr93', NULL, N'KX-2004CA', NULL, NULL, N'img/KX-2004CA.jpg', N'img/KX-2004CA.jpg', N'img/KX-2004CA.jpg', NULL, 1740000, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr94', NULL, N'KX-', NULL, NULL, N'img/product11.jpeg', N'img/product11.jpeg', N'img/product11.jpeg', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr95', NULL, N'KX-', NULL, NULL, N'img/product11.jpeg', N'img/product11.jpeg', N'img/product11.jpeg', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr96', NULL, N'KX-', NULL, NULL, N'img/product11.jpeg', N'img/product11.jpeg', N'img/product11.jpeg', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr97', NULL, N'KX-', NULL, NULL, N'img/product11.jpeg', N'img/product11.jpeg', N'img/product11.jpeg', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr98', NULL, N'KX-', NULL, NULL, N'img/product11.jpeg', N'img/product11.jpeg', N'img/product11.jpeg', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'pr99', NULL, N'KX-', NULL, NULL, N'img/product11.jpeg', N'img/product11.jpeg', N'img/product11.jpeg', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'prd1', CAST(0x0000AA3D00BD83A0 AS DateTime), N'KX - 2011C4', N'DC 12v', N'12 Tháng', N'test', NULL, NULL, NULL, 970000, NULL, N'new', N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'prd2', CAST(0x0000AA3D00BD83A0 AS DateTime), N'KX - 2011C4', N'DC 12v', N'12 Tháng', N'test', NULL, NULL, NULL, 970000, NULL, N'new', N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'prd3', CAST(0x0000AA3D00BD83A0 AS DateTime), N'KX - 2011C4', N'DC 12v', N'12 Tháng', N'test', NULL, NULL, NULL, 970000, NULL, N'new', N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'prd4', NULL, N'KX-1002C4', NULL, NULL, N'img/KX-1002C4.png', N'img/KX-1002C4.png', N'img/KX-1002C4.png', NULL, 940000, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'prd5', NULL, N'KX-1001C4', NULL, NULL, N'img/KX-1001C4.jpg', N'img/KX-1001C4.jpg', N'img/KX-1001C4.jpg', NULL, 940000, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'prd6', NULL, N'KX-1001S4', NULL, NULL, N'img/KX-1001S4.jpg', N'img/KX-1001S4.jpg', N'img/KX-1001S4.jpg', NULL, 970000, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'prd7', NULL, N'KX-1011S4', NULL, NULL, N'img/KX-1011S4.jpg', N'img/KX-1011S4.jpg', N'img/KX-1011S4.jpg', NULL, 1080000, NULL, NULL, N'cate012345')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'prd8', NULL, N'KX-1012S4', NULL, NULL, N'img/KX-1012S4.jpg', N'img/KX-1012S4.jpg', N'img/KX-1012S4.jpg', NULL, 1080000, NULL, NULL, N'cate012345')
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF_Account_createdDate]  DEFAULT (getdate()) FOR [createdDate]
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
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_Rating_Customer] FOREIGN KEY([ctmid])
REFERENCES [dbo].[Customer] ([ctmid])
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_Rating_Customer]
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
