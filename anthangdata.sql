USE [ATCameraDB]
GO
/****** Object:  Table [dbo].[Camera]    Script Date: 5/15/2019 10:44:36 AM ******/
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
/****** Object:  Table [dbo].[Category]    Script Date: 5/15/2019 10:44:36 AM ******/
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
/****** Object:  Table [dbo].[DVR]    Script Date: 5/15/2019 10:44:36 AM ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 5/15/2019 10:44:36 AM ******/
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
/****** Object:  View [dbo].[ViewProductOD]    Script Date: 5/15/2019 10:44:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ViewProductOD]
AS
SELECT        dbo.Product.*, dbo.OrderDetail.oddid, dbo.OrderDetail.createdDate AS Expr1, dbo.OrderDetail.oddQuantity, dbo.OrderDetail.oddPrice, dbo.OrderDetail.odmid
FROM            dbo.OrderDetail INNER JOIN
                         dbo.Product ON dbo.OrderDetail.prdid = dbo.Product.prdid


GO
INSERT [dbo].[Camera] ([camid], [createdDate], [camSensor], [camResolution], [camIR], [camLen], [camVideoStandard], [camRecord], [camTemperature], [camMemory], [camMaterial], [prdid]) VALUES (N'00ea3cf3-85ad-4ec4-b79e-5e2f030eb50a', CAST(0x0000AA4E0035C91E AS DateTime), N'1.0 Megapixel OV', N'1.0MP 25/30fps@(1280x720)', N'20m, led SMD', N'2.8mm (84º)', N'HD', N'Update', N'-40~60ºC', N'Update', N'Plastic', N'4caca448-1b3e-4b04-b085-0ac3a65e1c7c')
INSERT [dbo].[Camera] ([camid], [createdDate], [camSensor], [camResolution], [camIR], [camLen], [camVideoStandard], [camRecord], [camTemperature], [camMemory], [camMaterial], [prdid]) VALUES (N'1e47aa1a-27a5-4464-a685-27cec67aeada', CAST(0x0000AA4E003B6630 AS DateTime), N'1.0 Megapixel OV', N'1.0MP 25/30fps@(1280x720)', N'20m, led SMD', N'2.8mm (84º)', N'HD', N'2D-DNR', N'-40~+60ºC', N'Update', N'Plastic', N'123800b5-c510-42bb-80f6-8143dad7d5a7')
INSERT [dbo].[Camera] ([camid], [createdDate], [camSensor], [camResolution], [camIR], [camLen], [camVideoStandard], [camRecord], [camTemperature], [camMemory], [camMaterial], [prdid]) VALUES (N'617ee2be-b831-4c84-af62-0494140ebfc7', CAST(0x0000AA4E003CE687 AS DateTime), N'1.0 Megapixel Panasonic', N'1.0MP 25/30fps@(1280x720)', N'20m, led SMD', N'2.8mm (84º)', N'HD', N'2D-DNR', N'-40~+60ºC', N'Update', N'Plastic', N'360dd047-3451-471f-8d5e-eef12b49fa88')
INSERT [dbo].[Camera] ([camid], [createdDate], [camSensor], [camResolution], [camIR], [camLen], [camVideoStandard], [camRecord], [camTemperature], [camMemory], [camMaterial], [prdid]) VALUES (N'62dbbc77-792b-4ecf-9a37-1901164ffa1b', CAST(0x0000AA4E00471284 AS DateTime), N'1/2.7" 1.0 Megapixel OV', N'2.0MP 25/30fps@(1280x720)', N'20m, led SMD', N'3.6mm (88º)', N'HD', N'2D-DNR', N'-40~+60ºC', N'Update', N'Plastic', N'e0391201-3f16-4524-b8ac-f8ba83074c20')
INSERT [dbo].[Camera] ([camid], [createdDate], [camSensor], [camResolution], [camIR], [camLen], [camVideoStandard], [camRecord], [camTemperature], [camMemory], [camMaterial], [prdid]) VALUES (N'6b340e9f-a782-45b0-b14e-82dcd3ce8e9c', CAST(0x0000AA4E004977C0 AS DateTime), N'1/2.7" 2.0 Megapixel Panasonic', N'2.0MP 25/30fps@(1280x1080)', N'20m, led SMD', N'3.6mm (88º)', N'HD', N'2D-DNR', N'-30~+60ºC', N'Update', N'Plastic', N'7d6b4bed-ced5-42cd-94ab-dc1a275cd23f')
INSERT [dbo].[Camera] ([camid], [createdDate], [camSensor], [camResolution], [camIR], [camLen], [camVideoStandard], [camRecord], [camTemperature], [camMemory], [camMaterial], [prdid]) VALUES (N'74922f04-2ca1-4439-aecb-441aef0115fe', CAST(0x0000AA4E003E45BC AS DateTime), N'1/4" 1.3 Megapixel Antipha', N'1.3MP 25/30fps@(1280x720)', N'20m, led SMD', N'3.6mm (84º)', N'HD', N'2D-DNR', N'-40~+60ºC', N'Update', N'Plastic', N'df1bc26b-cc2d-422e-8ff8-931cd4ba549d')
INSERT [dbo].[Camera] ([camid], [createdDate], [camSensor], [camResolution], [camIR], [camLen], [camVideoStandard], [camRecord], [camTemperature], [camMemory], [camMaterial], [prdid]) VALUES (N'7daef79a-db47-4bef-b9ed-189143922a7c', CAST(0x0000AA4E004883B8 AS DateTime), N'1/2.7" 2.0 Megapixel Panasonic', N'2.0MP 25/30fps@(1280x720)', N'20m, led SMD', N'3.6mm (88º)', N'HD', N'2D-DNR', N'-40~+60ºC', N'Update', N'Plastic', N'68f8bb8a-7380-45e9-b0ec-80052286d346')
INSERT [dbo].[Camera] ([camid], [createdDate], [camSensor], [camResolution], [camIR], [camLen], [camVideoStandard], [camRecord], [camTemperature], [camMemory], [camMaterial], [prdid]) VALUES (N'96dfe4d9-f5ba-491c-a5fb-828677a46e9a', CAST(0x0000AA4E004E2CF7 AS DateTime), N'1/2.7" 2.0 Megapixel Antipha', N'2.0MP 25/30fps@(1280x720)', N'60m', N'2.7~13.5mm (106º~30º)', N'HD', N'2D-DNR', N'-30~+60ºC', N'Update', N'Unknow', N'd5bf2628-db21-4a3c-87d3-82745fb2f43f')
INSERT [dbo].[Camera] ([camid], [createdDate], [camSensor], [camResolution], [camIR], [camLen], [camVideoStandard], [camRecord], [camTemperature], [camMemory], [camMaterial], [prdid]) VALUES (N'a4355186-b538-4500-a052-854995530a0c', CAST(0x0000AA4E004CDA3B AS DateTime), N'1/2.7" 2.0 Megapixel Antipha', N'2.0MP 25/30fps@(1920x1080)', N'80m', N'3.6mm (88º)', N'HD', N'2D-DNR', N'-30~+60ºC', N'Update', N'UPDATE', N'c32f4828-2a7e-4a01-8882-b6142ef5b03e')
INSERT [dbo].[Camera] ([camid], [createdDate], [camSensor], [camResolution], [camIR], [camLen], [camVideoStandard], [camRecord], [camTemperature], [camMemory], [camMaterial], [prdid]) VALUES (N'b6777347-8b73-45e9-9482-6b61feae19e9', CAST(0x0000AA4E00448D43 AS DateTime), N'1/4" 1.3 Megapixel Antipha', N'1.3MP 25/30fps@(1280x720)', N'20m, led SMD', N'3.6mm (84º)', N'HD', N'2D-DNR', N'-40~+60ºC', N'Update', N'Plastic', N'93de1f6a-1496-48bd-864c-24187aec290c')
INSERT [dbo].[Camera] ([camid], [createdDate], [camSensor], [camResolution], [camIR], [camLen], [camVideoStandard], [camRecord], [camTemperature], [camMemory], [camMaterial], [prdid]) VALUES (N'dccfb918-80b8-47ee-bb9d-0771609b20ee', CAST(0x0000AA4E0037163B AS DateTime), N'1.0 Megapixel OV', N'1.0MP 25/30fps@(1280x720)', N'20m, led SMD', N'2.8mm (84º)', N'HD', N'2D-DNR', N'-40~+60ºC', N'Update', N'Plastic', N'69119b32-f44b-4158-8005-d49ac4186c5c')
INSERT [dbo].[Camera] ([camid], [createdDate], [camSensor], [camResolution], [camIR], [camLen], [camVideoStandard], [camRecord], [camTemperature], [camMemory], [camMaterial], [prdid]) VALUES (N'e2d813b4-4093-4bca-a9e9-e45f1dfd614e', CAST(0x0000AA4E00467072 AS DateTime), N'1/2.7" 2.0 Megapixel OV', N'2.0MP 25/30fps@(1280x720),', N'20m, led SMD', N'3.6mm (88º)', N'HD', N'2D-DNR', N'-40~+60ºC', N'Update', N'Plastic', N'172ee385-1464-4e80-99ca-abf072f130bb')
INSERT [dbo].[Camera] ([camid], [createdDate], [camSensor], [camResolution], [camIR], [camLen], [camVideoStandard], [camRecord], [camTemperature], [camMemory], [camMaterial], [prdid]) VALUES (N'f13dabe7-bff6-4e40-a789-5fac2430d3be', CAST(0x0000AA4E004B7D83 AS DateTime), N'1/2.7" 2.0 Megapixel Antipha', N'2.0MP 25/30fps@(1920x1080)', N'30m', N'3.6mm (88º)', N'HD', N'2D-DNR', N'-40~+60ºC', N'Update', N'Plastic', N'6aa13cca-fe33-49d1-92b6-dc3c7812a1d8')
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'65360a1e-64e1-4ea8-8d00-0d61fe6cdab4', CAST(0x0000AA4E0031E0E5 AS DateTime), N'Other', N'Korera', N'KR', N'new', N'')
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate1', NULL, N'Camera', N'HD ANALOG CAMERA 1.0MP', N'KX', N'active', N'CAMERA 4 IN 1')
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate10', NULL, N'Camera', N'HD ANLOG CAMERA 4K POC (4.OMP)', N'KX', N'new', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate11', NULL, N'Camera', N'HD ANLOG CAMERA 4K POC (8.OMP)', N'KX', N'new', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate12', NULL, N'Camera', N'IP CAMERA 1.0MP', N'KX', N'new', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate13', NULL, N'Camera', N'IP CAMERA 1.3MP', N'KX', N'new', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate14', NULL, N'Camera', N'IP CAMERA 2.0MP', N'KX', N'new', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate15', NULL, N'Camera', N'IP CAMERA 3.0MP', N'KX', N'new', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate16', NULL, N'Camera', N'IP CAMERA 8.0MP', N'KX', N'new', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate17', NULL, N'Camera', N'IP CAMERA 4.0MP', N'KX', N'new', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate18', NULL, N'Camera', N'SMART IP', N'KX', N'new', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate19', NULL, N'Camera', N'WIFI CAMERA 1.3MP', N'KX', N'new', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate2', NULL, N'Camera', N'HD ANALOG CAMERA 1.0MP(Panasonic Chip Set)', N'KX', N'active', N'Panasonic chipset CAMERA 4 IN 1')
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate20', NULL, N'Camera', N'WIFI CAMERA 3.0MP', N'KX', N'new', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate21', NULL, N'Camera', N'4 IN 1 SPEED DOME 2.0MP', N'KX', N'new', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate22', NULL, N'Camera', N'KEYBOARD CONTROLLER', N'KX', N'new', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate23', NULL, N'Camera', N'IP SPEED DOME 2.0MP', N'KX', N'new', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate24', NULL, N'Camera', N'SMART IP SPEED DOME', N'KX', N'new', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate25', NULL, N'Camera', N'IP KEYBOARD CONTROLLER', N'KX', N'new', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate26', NULL, N'DVR', N'DVR 5 IN 1', N'KX', N'active', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate27', NULL, N'DVR', N'HD ANALOG DVR 5 IN 1 - H.265+', N'KX', N'new', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate28', NULL, N'DVR', N'HD ANALOG DVR 2K (4.0MP)', N'KX', N'new', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate29', NULL, N'DVR', N'HD ANALOG DVR 2K (8.0MP)', N'KX', N'new', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate3', NULL, N'Camera', N'HD ANALOG CAMERA 1.3MP', N'KX', N'active', N'CAMERA 4 IN 1')
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate30', NULL, N'DVR', N'NVR', N'KX', N'new', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate31', NULL, N'DVR', N'DVR', N'KX', N'active', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate32', NULL, N'Camera', N'IP CAMERA 1.0MP/1.3MP/2.0MP', N'KX', N'new', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate33', NULL, N'Camera', N'HD ANALOG CAMERA 1.0MP/1.3MP/2.0MP-CHIPSET TOSHIBA', N'KX', N'new', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate34', NULL, N'Other', N'HDD', N'KX', N'active', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate35', NULL, N'Other', N'CHANGER', N'KX', N'active', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate4', NULL, N'Camera', N'HD ANALOG CAMERA 2.0MP', N'KX', N'active', N'CAMERA 4 IN 1')
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate5', NULL, N'Camera', N'HD ANALOG CAMERA 2.0MP(Panasonic Chip Set)', N'KX', N'active', N'Panasonic chipset CAMERA 4 IN 1')
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate6', NULL, N'Camera', N'HD ANALOG CAMERA 2.0MP(Aptina/Sony ChipSet)', N'KX', N'active', N'CAMERA 4 IN 1')
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate7', NULL, N'Camera', N'CAMERA 4 in POC 2.0MP', N'KX', N'active', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate8', NULL, N'Camera', N'HD ANALOG CAMERA 2.1MP', N'KX', N'new', NULL)
INSERT [dbo].[Category] ([ctgid], [createdDate], [ctgType], [ctgTitle], [ctgOrigin], [ctgStatus], [ctgDescript]) VALUES (N'cate9', NULL, N'Camera', N'HD ANLOG CAMERA 2K POC (4.OMP)', N'KX', N'new', NULL)
INSERT [dbo].[DVR] ([dvrid], [createdDate], [dvrChannel], [dvrInPort], [dvrOutPort], [dvrCompression], [dvrRecord], [dvrPlayback], [dvrPower], [prdid]) VALUES (N'6caea6da-b59f-4856-b1e6-771cc97fd4ce', CAST(0x0000AA4E0052BE76 AS DateTime), N'5 Chanel', N'CVI/TVI/AHD(1.0, 1.3, 2.0)/Analog/IP(2MP)', N'VGA/HDMI', N'H.264', N'2.0 MP Lite , 1.0MP', N'4 channel', NULL, N'c0bb9c3d-8b5b-4989-b7a5-34c3dc0adc4b')
INSERT [dbo].[DVR] ([dvrid], [createdDate], [dvrChannel], [dvrInPort], [dvrOutPort], [dvrCompression], [dvrRecord], [dvrPlayback], [dvrPower], [prdid]) VALUES (N'b1159b19-69bc-4a78-9d83-d4e02367255e', CAST(0x0000AA4E0054A96E AS DateTime), N'4 Chanel', N'Camera CVI/TVI/AHD/Analog/IP(Camera ip to 5mp)', N'VGA/HDMI', N'H.264', N'1080N, 720P', N'4 channel , support Onvif 2.', NULL, N'ec5ca98d-881c-4533-977c-2f83a2ed8607')
INSERT [dbo].[DVR] ([dvrid], [createdDate], [dvrChannel], [dvrInPort], [dvrOutPort], [dvrCompression], [dvrRecord], [dvrPlayback], [dvrPower], [prdid]) VALUES (N'c52d4987-380e-4711-93c4-e6833cdbaffa', CAST(0x0000AA4E00557C70 AS DateTime), N'8 Channel', N'Camera CVI/TVI/AHD/Analog/IP(Camera ip to 5mp)', N'VGA/HDMI', N'H.264', N'1080N, 720P', N'1/4/9 Chanel , Support Onvif 2.4', NULL, N'15ed68dc-a944-4e56-bc9b-7e28f755f339')
INSERT [dbo].[DVR] ([dvrid], [createdDate], [dvrChannel], [dvrInPort], [dvrOutPort], [dvrCompression], [dvrRecord], [dvrPlayback], [dvrPower], [prdid]) VALUES (N'eb17deb8-e2f2-4c60-a048-aaca00f96b51', CAST(0x0000AA4E00512303 AS DateTime), N'4 Chanel', N'CVI/TVI/AHD/Analog/IP(2MP)', N'VGA/HDMI, display 4 chanel', N'H.264', N'2.0 MP Lite , 1.0MP', N'1 in/1 out , 2-way', NULL, N'585b7561-a8a0-457a-a84a-7a993cf46c54')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'123800b5-c510-42bb-80f6-8143dad7d5a7', CAST(0x0000AA4E003B6625 AS DateTime), N'KX - 1004C4', N'DC 12V, IP67', N'12', N'img/KX-1002C4.png', N'img/KX-1002C4.png', N'img/KX-1002C4.png', NULL, 770000, N'CAMERA 4 IN 1(CTV, TVI,AHD,Analog)', N'new', N'cate1')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'15ed68dc-a944-4e56-bc9b-7e28f755f339', CAST(0x0000AA4E00557C67 AS DateTime), N'KX - X108C', N'220V', N'6', N'img/KX-X108C.jpg', N'img/KX-X108C.jpg', N'img/KX-X108C.jpg', NULL, 3400000, N'HD(5in1)4 chanel + 1 chanel IP', N'new', N'cate31')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'172ee385-1464-4e80-99ca-abf072f130bb', CAST(0x0000AA4E00467065 AS DateTime), N'KX - 2011C4', N'DC 12V, IP67', N'3', N'img/KX-2001C4.jpg', N'img/KX-2001C4.jpg', N'img/KX-2001C4.jpg', NULL, 920000, N'CAMERA 4 IN 1(CTV, TVI,AHD,Analog)', N'new', N'cate4')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'360dd047-3451-471f-8d5e-eef12b49fa88', CAST(0x0000AA4E003CE67C AS DateTime), N'KX - 1002C4', N'DC 12V, IP67', N'12', N'img/KX-1002C4.png', N'img/KX-1002C4.png', N'img/KX-1002C4.png', NULL, 940000, N'CAMERA 4 IN 1(CVI, TVI, AHD, ANALOG)', N'new', N'cate1')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'3b184074-35b5-4080-9888-7005526152a4', CAST(0x0000AA4E00565FD7 AS DateTime), N'SamSung 500GB', N'90V', N'12', N'img/samsung-hard-disk-500x500.jpg', N'img/samsung-hard-disk-500x500.jpg', N'img/samsung-hard-disk-500x500.jpg', NULL, 550000, N'SamSung is trademark is best Hard Drive', N'new', N'cate34')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'4caca448-1b3e-4b04-b085-0ac3a65e1c7c', CAST(0x0000AA4E0035C913 AS DateTime), N'KX - 1004C4', N'DC 12V', N'12', N'img/KX-1004C4.png', N'img/KX-1004C4.png', N'img/KX-1004C4.png', NULL, 770000, N'CAMERA 4 IN 1(CVI, TVI, AHD, ANALOG)', N'new', N'cate2')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'585b7561-a8a0-457a-a84a-7a993cf46c54', CAST(0x0000AA4E005122FA AS DateTime), N'KX - 7104TD6', N'220V', N'12', N'img/KX-7104TD6.jpg', N'img/KX-7104TD6.jpg', N'img/KX-7104TD6.jpg', NULL, 2180000, N'HD(5in1)4 chanel + 1 chanel IP', N'new', N'cate26')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'68f8bb8a-7380-45e9-b0ec-80052286d346', CAST(0x0000AA4E004883AD AS DateTime), N'KX - 2001C4', N'DC 12V, IP67', N'12', N'img/KX-2001C4.jpg', N'img/KX-2001C4.jpg', N'img/KX-2001C4.jpg', NULL, 1200000, N'CAMERA 4 IN 1(CTV, TVI,AHD,Analog)', N'new', N'cate5')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'69119b32-f44b-4158-8005-d49ac4186c5c', CAST(0x0000AA4E00371636 AS DateTime), N'KX - 1003C4', N'DC 12V, IP67', N'12', N'img/KX-1003C4.png', N'img/KX-1003C4.png', N'img/KX-1003C4.png', NULL, 770000, N'CAMERA 4 IN 1(CTV, TVI,AHD,Analog)', N'new', N'cate2')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'6aa13cca-fe33-49d1-92b6-dc3c7812a1d8', CAST(0x0000AA4E004B7D78 AS DateTime), N'KX - 2001SK4', N'DC 12V, IP67', N'12', N'img/KX-3003N.png', N'img/KX-3003N.png', N'img/KX-3003N.png', NULL, 1380000, N'CAMERA 4 IN 1(CTV, TVI,AHD,Analog)', N'new', N'cate6')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'7d6b4bed-ced5-42cd-94ab-dc1a275cd23f', CAST(0x0000AA4E004977B8 AS DateTime), N'KX - 2002C4', N'DC 12V', N'12', N'img/KX-2002C4.jpg', N'img/KX-2002C4.jpg', N'img/KX-2002C4.jpg', NULL, 1200000, N'CAMERA 4 IN 1(CTV, TVI,AHD,Analog)', N'new', N'cate5')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'93de1f6a-1496-48bd-864c-24187aec290c', CAST(0x0000AA4E00448D39 AS DateTime), N'KX - 1301C', N'DC 12V', N'12', N'img/KX-1302C.jpg', N'img/KX-1302C.jpg', N'img/KX-1302C.jpg', NULL, 890000, N'CAMERA 4 IN 1(CVI, TVI, AHD, ANALOG)', N'new', N'cate3')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'949b7769-f9ca-433d-ad5e-81d540d64d9b', CAST(0x0000AA4E0056C791 AS DateTime), N'Changer 3.5', N'Update', N'12', N'img/jack3.5haidau.jpg', N'img/jack3.5haidau.jpg', N'img/jack3.5haidau.jpg', NULL, 152000, N'', N'new', N'cate35')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'c0bb9c3d-8b5b-4989-b7a5-34c3dc0adc4b', CAST(0x0000AA4E0052BE66 AS DateTime), N'KX - 7104D6', N'220V', N'12', N'img/KX-7104D6.jpg', N'img/KX-7104D6.jpg', N'img/KX-7104D6.jpg', NULL, 2580000, N'HD(5in1)4 chanel + 1 chanel IP', N'new', N'cate26')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'c32f4828-2a7e-4a01-8882-b6142ef5b03e', CAST(0x0000AA4E004CDA2F AS DateTime), N'KX - 2003C4', N'DC 12V , IP67', N'12', N'img/KX-2003C4.jpg', N'img/KX-2003C4.jpg', N'img/KX-2003C4.jpg', NULL, 1700000, N'CAMERA 4 IN 1(CTV, TVI,AHD,Analog)', N'new', N'cate6')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'd5bf2628-db21-4a3c-87d3-82745fb2f43f', CAST(0x0000AA4E004E2CEE AS DateTime), N'KX - 2005C', N'DC 12V, IP67', N'12', N'img/KX-2005C.jpg', N'img/KX-2005C.jpg', N'img/KX-2005C.jpg', NULL, 2980000, N'CAMERA 4 IN 1(CTV, TVI,AHD,Analog)', N'new', N'cate7')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'df1bc26b-cc2d-422e-8ff8-931cd4ba549d', CAST(0x0000AA4E003E45B4 AS DateTime), N'KX - 1301C', N'DC 12V', N'12', N'img/KX-1301C.jpg', N'img/KX-1301C.jpg', N'img/KX-1301C.jpg', NULL, 890000, N'CAMERA 4 IN 1(CVI, TVI, AHD, ANALOG)', N'new', N'cate3')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'e0391201-3f16-4524-b8ac-f8ba83074c20', CAST(0x0000AA4E00471278 AS DateTime), N'KX - 2012C4', N'DC 12V', N'6', N'img/KX-2012C4.jpg', N'img/KX-2012C4.jpg', N'img/KX-2012C4.jpg', NULL, 920000, N'CAMERA 4 IN 1(CTV, TVI,AHD,Analog)', N'new', N'cate4')
INSERT [dbo].[Product] ([prdid], [createdDate], [prdTittle], [prdPower], [prdWarranty], [prdImage], [prdImage2], [prdImage3], [prdDiscount], [prdPrice], [prdDescript], [prdStatus], [ctgid]) VALUES (N'ec5ca98d-881c-4533-977c-2f83a2ed8607', CAST(0x0000AA4E0054A965 AS DateTime), N'KX - X104C', N'220V', N'12', N'img/KX-X104C.jpg', N'img/KX-X104C.jpg', N'img/KX-X104C.jpg', NULL, 2280000, N'HD(5in1)4 chanel + 1 chanel IP', N'new', N'cate31')
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
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_ProductSub_Category] FOREIGN KEY([ctgid])
REFERENCES [dbo].[Category] ([ctgid])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_ProductSub_Category]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "OrderDetail"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Product"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewProductOD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewProductOD'
GO
