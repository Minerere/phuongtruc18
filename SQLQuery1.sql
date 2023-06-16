CREATE DATABASE ShopDunk
GO
USE ShopDunk
GO
/****** Object:  Table [dbo].[accounts]    Script Date: 5/31/2022 9:25:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[accounts](
	[username] [varchar](50) NOT NULL,
	[activated] [bit] NOT NULL,
	[admin] [bit] NOT NULL,
	[email] [varchar](50) NULL,
	[fullname] [nvarchar](50) NULL,
	[password] [varchar](50) NULL,
	[photo] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[categories]    Script Date: 5/31/2022 9:25:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[categories](
	[id] [varchar](50) NOT NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[orderdetails]    Script Date: 5/31/2022 9:25:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderdetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[orderid] [int] NULL,
	[productid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE TABLE [dbo].[imagedetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image1] [nvarchar](100)  NULL,
	[image2] [nvarchar](100)  NULL,
	[image3] [nvarchar](100)  NULL,
	[image4] [nvarchar](100)  NULL,
	[image5] [nvarchar](100)  NULL,
	[image6] [nvarchar](100)  NULL,
	[image7] [nvarchar](100)  NULL,
	[image8] [nvarchar](100)  NULL,
	[image9] [nvarchar](100)  NULL,
	[image10] [nvarchar](100)  NULL

PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[orders]    Script Date: 5/31/2022 9:25:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](50) NULL,
	[createdate] [date] NULL,
	[username] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[products]    Script Date: 5/31/2022 9:25:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] IDENTITY(1,1) NOT NULL ,
	[available] [bit] NULL,
	[createdate] [date] NULL,
	[image] [varchar](200) NULL,
	[name] [nvarchar](50) NULL,
	[price] [float] NULL,	
	[numberOf] [int] NULL,
	[categoryid] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[accounts] ([username], [activated], [admin], [email], [fullname], [password], [photo]) VALUES
	 (N'duchm', 1, 1, N'duchmps23300@fpt.edu.vn', N'Hoàng Minh Đức', N'123', N'duchm.jpg'),
	 (N'khoadtd', 1, 1, N'khoadtdps23528@fpt.edu.vn', N'Diệp Từ Đăng Khoa', N'123', N'khoadtd.jpg'),
	 (N'trongqt', 1, 1, N'trongqtps23394@fpt.edu.vn', N'Mai Quốc Trọng', N'123', N'trongmq.jpg'),
	 (N'huyplg', 1, 1, N'huyplgps23401@fpt.edu.vn', N'Phan Lục Gia Huy', N'123', N'huyplg.jpg'),
	 (N'thanhnd', 1, 1, N'thanhndps20451@fpt.edu.vn', N'Nguyễn Đạt Thành', N'123', N'thanhnd.jpg'),
	 (N'user001', 1, 0, N'user001@gmail.com', N'Guest', N'123', N'user001.jpg')

INSERT [dbo].[categories] ([id], [name]) VALUES (N'DM01', N'iPhone')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'DM02', N'iPad')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'DM03', N'Phụ kiện,')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'DM04', N'Mac')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'DM05', N'Watch')
INSERT [dbo].[categories] ([id], [name]) VALUES (N'DM06', N'Âm thanh')

SET IDENTITY_INSERT [dbo].[products] ON 

INSERT [dbo].[products] ([available], [createdate], [image], [name], [price], [numberOf], [categoryid]) VALUES 
(1, CAST(N'2022-03-01' AS Date), N'https://shopdunk.com/images/thumbs/0007808_iphone-14-pro-max-128gb_240.png', N'IPhone 14 Pro Max', 34990000, 20, N'DM01')
INSERT [dbo].[products] ([available], [createdate], [image], [name], [price], [numberOf], [categoryid]) VALUES 
(1, CAST(N'2022-03-01' AS Date), N'https://shopdunk.com/images/thumbs/0008734_iphone-14-pro-128gb_240.png', N'IPhone 14 Pro', 30990000, 13, N'DM01')
INSERT [dbo].[products] ([available], [createdate], [image], [name], [price], [numberOf], [categoryid]) VALUES 
(1, CAST(N'2022-03-01' AS Date), N'https://shopdunk.com/images/thumbs/0009181_iphone-14-128gb_240.png', N'IPhone 14', 24999000, 13, N'DM01')
INSERT [dbo].[products] ([available], [createdate], [image], [name], [price], [numberOf], [categoryid]) VALUES 
(1, CAST(N'2022-03-01' AS Date), N'https://shopdunk.com/images/thumbs/0009495_iphone-14-plus-128gb_240.png', N'IPhone 14 Plus',24999000, 13, N'DM01')

SET IDENTITY_INSERT [dbo].[products] OFF

SET IDENTITY_INSERT [dbo].[imagedetails] ON 
INSERT [dbo].[imagedetails] ([image1],[image2],[image3],[image4],[image5],[image6],[image7],[image8],[image9],[image10]) VALUES 
('https://shopdunk.com/images/thumbs/0008045_gold_550.webp','https://shopdunk.com/images/thumbs/0008046_gold_550.webp','https://shopdunk.com/images/thumbs/0008047_gold_550.webp',
'https://shopdunk.com/images/thumbs/0008048_gold_550.webp','https://shopdunk.com/images/thumbs/0008049_gold_550.webp','https://shopdunk.com/images/thumbs/0008050_gold_550.webp',
'https://shopdunk.com/images/thumbs/0008051_gold_550.webp','https://shopdunk.com/images/thumbs/0008052_gold_550.webp','https://shopdunk.com/images/thumbs/0008053_gold_550.webp',
'https://shopdunk.com/images/thumbs/0008054_gold_550.webp'
)
INSERT [dbo].[imagedetails] ([image1],[image2],[image3],[image4],[image5],[image6],[image7],[image8],[image9],[image10]) VALUES 
('https://shopdunk.com/images/thumbs/0008744_iphone-14-pro-128gb_550.png','https://shopdunk.com/images/thumbs/0008745_iphone-14-pro-128gb_550.webp','https://shopdunk.com/images/thumbs/0008746_iphone-14-pro-128gb_550.webp',
'https://shopdunk.com/images/thumbs/0008747_iphone-14-pro-128gb_550.webp','https://shopdunk.com/images/thumbs/0008748_iphone-14-pro-128gb_550.webp','https://shopdunk.com/images/thumbs/0008749_iphone-14-pro-128gb_550.webp',
'https://shopdunk.com/images/thumbs/0008750_iphone-14-pro-128gb_550.webp','https://shopdunk.com/images/thumbs/0008751_iphone-14-pro-128gb_550.webp','https://shopdunk.com/images/thumbs/0008752_iphone-14-pro-128gb_550.webp',
'https://shopdunk.com/images/thumbs/0008734_iphone-14-pro-128gb_550.png'
)
INSERT [dbo].[imagedetails] ([image1],[image2],[image3],[image4],[image5],[image6],[image7],[image8],[image9],[image10]) VALUES 
('https://shopdunk.com/images/thumbs/0009191_iphone-14-128gb_550.png','https://shopdunk.com/images/thumbs/0009192_iphone-14-128gb_550.webp','https://shopdunk.com/images/thumbs/0009193_iphone-14-128gb_550.webp',
'https://shopdunk.com/images/thumbs/0009194_iphone-14-128gb_550.webp','https://shopdunk.com/images/thumbs/0009195_iphone-14-128gb_550.webp','https://shopdunk.com/images/thumbs/0009196_iphone-14-128gb_550.webp',
'https://shopdunk.com/images/thumbs/0009197_iphone-14-128gb_550.webp','https://shopdunk.com/images/thumbs/0009198_iphone-14-128gb_550.webp','https://shopdunk.com/images/thumbs/0009199_iphone-14-128gb_550.webp',
'https://shopdunk.com/images/thumbs/0009181_iphone-14-128gb_550.png'
)
INSERT [dbo].[imagedetails] ([image1],[image2],[image3],[image4],[image5],[image6],[image7],[image8],[image9],[image10]) VALUES 
('https://shopdunk.com/images/thumbs/0009496_iphone-14-plus-128gb_550.webp','https://shopdunk.com/images/thumbs/0009497_iphone-14-plus-128gb_550.webp','https://shopdunk.com/images/thumbs/0009498_iphone-14-plus-128gb_550.webp',
'https://shopdunk.com/images/thumbs/0009499_iphone-14-plus-128gb_550.webp','https://shopdunk.com/images/thumbs/0009500_iphone-14-plus-128gb_550.webp','https://shopdunk.com/images/thumbs/0009501_iphone-14-plus-128gb_550.webp',
'https://shopdunk.com/images/thumbs/0009502_iphone-14-plus-128gb_550.webp','https://shopdunk.com/images/thumbs/0009503_iphone-14-plus-128gb_550.webp','https://shopdunk.com/images/thumbs/0009504_iphone-14-plus-128gb_550.webp',
'https://shopdunk.com/images/thumbs/0009495_iphone-14-plus-128gb_550.png'
)
SET IDENTITY_INSERT [dbo].[imagedetails] OFF


ALTER TABLE [dbo].[orderdetails]  WITH CHECK ADD FOREIGN KEY([orderid])
REFERENCES [dbo].[orders] ([id])
GO
ALTER TABLE [dbo].[orderdetails]  WITH CHECK ADD FOREIGN KEY([productid])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[accounts] ([username])
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD FOREIGN KEY([categoryid])
REFERENCES [dbo].[categories] ([id])
GO
ALTER TABLE [dbo].[imagedetails]  WITH CHECK ADD FOREIGN KEY([id])
REFERENCES [dbo].[products] ([id])
GO
