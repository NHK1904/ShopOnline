USE [ProjectGroup5]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/25/2023 5:44:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[AccountName] [nvarchar](50) NULL,
	[Pass] [varchar](255) NULL,
	[Permission] [int] NULL,
	[Firtname] [nvarchar](50) NULL,
	[Lastname] [nvarchar](50) NULL,
	[email] [varchar](255) NULL,
	[NumberPhone] [varchar](255) NULL,
	[addres] [varchar](255) NULL,
	[AccountImg] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 7/25/2023 5:44:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[cdID] [int] IDENTITY(1,1) NOT NULL,
	[accountID] [int] NULL,
	[productID] [int] NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[cdID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 7/25/2023 5:44:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CusID] [int] IDENTITY(1,1) NOT NULL,
	[DateBuy] [date] NULL,
	[Guarantee] [int] NULL,
	[productID] [int] NULL,
	[Seri] [varchar](255) NULL,
	[phone] [varchar](10) NULL,
	[Name] [nvarchar](40) NULL,
	[Address] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[CusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guarantee]    Script Date: 7/25/2023 5:44:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guarantee](
	[AccountID] [int] NOT NULL,
	[ReceivedDate] [date] NULL,
	[DeliveryDate] [date] NULL,
	[Progress] [int] NULL,
	[ProductID] [int] NULL,
	[Seri] [varchar](255) NULL,
	[Evaluate] [int] NULL,
	[Comment] [nvarchar](255) NULL,
	[Describe] [nvarchar](255) NULL,
	[GuaranteeID] [int] IDENTITY(1,1) NOT NULL,
	[PersonGuarantee] [nvarchar](255) NULL,
	[FullName] [nvarchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[phone] [varchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[expense] [float] NULL,
	[productImages] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[GuaranteeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 7/25/2023 5:44:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[NewId] [int] NOT NULL,
	[Title] [varchar](255) NULL,
	[NewsGroupId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[NewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsGroup]    Script Date: 7/25/2023 5:44:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsGroup](
	[NewsGroupId] [int] NOT NULL,
	[New] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[NewsGroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 7/25/2023 5:44:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[FullName] [nvarchar](255) NULL,
	[address] [nvarchar](50) NULL,
	[email] [nvarchar](255) NULL,
	[productID] [int] NULL,
	[productName] [varchar](255) NULL,
	[Seri] [varchar](255) NULL,
	[quantity] [int] NULL,
	[price] [int] NULL,
	[Phone] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orderr]    Script Date: 7/25/2023 5:44:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orderr](
	[OrderID] [int] NOT NULL,
	[AccountID] [int] NULL,
	[Total] [int] NULL,
	[OrderDate] [date] NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/25/2023 5:44:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Seri] [varchar](255) NOT NULL,
	[ProductID] [int] NULL,
	[price] [float] NULL,
	[CreateDate] [date] NULL,
	[ModifiedDate] [date] NULL,
	[CreateBy] [nvarchar](255) NULL,
	[ModifiedBy] [nvarchar](255) NULL,
	[Guarantee] [int] NULL,
	[images] [nvarchar](255) NULL,
	[sell] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Seri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImageList]    Script Date: 7/25/2023 5:44:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImageList](
	[pilid] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[images] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[pilid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 7/25/2023 5:44:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[productID] [int] IDENTITY(1,1) NOT NULL,
	[productName] [nvarchar](50) NULL,
	[supplierID] [int] NULL,
	[color] [nvarchar](255) NULL,
	[RAM] [varchar](50) NULL,
	[CPU] [varchar](50) NULL,
	[HardDriver] [varchar](50) NULL,
	[Screen] [varchar](50) NULL,
	[Quantity] [int] NULL,
	[Describe] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Review]    Script Date: 7/25/2023 5:44:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[rid] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[name] [nvarchar](40) NULL,
	[email] [nvarchar](50) NULL,
	[review] [text] NULL,
	[rating] [int] NULL,
	[postTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 7/25/2023 5:44:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[supplierID] [int] IDENTITY(1,1) NOT NULL,
	[supplierName] [varchar](255) NULL,
	[note] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[supplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([AccountID], [AccountName], [Pass], [Permission], [Firtname], [Lastname], [email], [NumberPhone], [addres], [AccountImg]) VALUES (2, N'Quang', N'üÇ“Y¬p\AfJtG''$}ÃùŸ¡&Š‚1éþu°', 2, N'Lai', N'Quang', N'tientvhe163382@fpt.edu.vn
', NULL, NULL, NULL)
INSERT [dbo].[Account] ([AccountID], [AccountName], [Pass], [Permission], [Firtname], [Lastname], [email], [NumberPhone], [addres], [AccountImg]) VALUES (1009, N'khang', N'NL¡j|ý[ªä±+q‚ˆºg5ÐŠ±püÚáS', 1, N'Nguyen', N'Khang', N'nguyenkhangloveanime@gmail.com', N'0949188382', N'thanh hóa ', N'images/7949_81ldotjrtkl.jpg')
INSERT [dbo].[Account] ([AccountID], [AccountName], [Pass], [Permission], [Firtname], [Lastname], [email], [NumberPhone], [addres], [AccountImg]) VALUES (1010, N'tien123123123', N'12345@Q', 1, N'aqwseq', N'qweq', N'tientvhe163382@fpt.edu.vn', NULL, NULL, NULL)
INSERT [dbo].[Account] ([AccountID], [AccountName], [Pass], [Permission], [Firtname], [Lastname], [email], [NumberPhone], [addres], [AccountImg]) VALUES (2008, N'tien', N'Tien1904@', 1, N'li', N'liqa', N'nguyenkhangloveanime@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[Account] ([AccountID], [AccountName], [Pass], [Permission], [Firtname], [Lastname], [email], [NumberPhone], [addres], [AccountImg]) VALUES (2009, N'44444', N'Loitq@13', 1, N'li', N'li', N'quang@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[Account] ([AccountID], [AccountName], [Pass], [Permission], [Firtname], [Lastname], [email], [NumberPhone], [addres], [AccountImg]) VALUES (3008, N'hung', N'€$»&¦"˜6ÚÅJå/’×²ï‰;P˜å^bëÍ~6œ', 1, N'Khang', N'Nguyen', N'nguyenkhang@gmail.com', N'0949188328', N'Ha Dong', NULL)
INSERT [dbo].[Account] ([AccountID], [AccountName], [Pass], [Permission], [Firtname], [Lastname], [email], [NumberPhone], [addres], [AccountImg]) VALUES (3009, N'khang1904', N'ƒCJ•Ib‚ÄqÁ™7´›Äþ•]ƒ.Z³¥xž°Q¸™e3', 1, N'q', N'q', N'nguyenkhangloveanime@gmail.com', N'06154894541', N'jjj', NULL)
INSERT [dbo].[Account] ([AccountID], [AccountName], [Pass], [Permission], [Firtname], [Lastname], [email], [NumberPhone], [addres], [AccountImg]) VALUES (4009, N'trinhhuuhung123@gmail.com', NULL, 1, N'Hùng', N'Trịnh', N'trinhhuuhung123@gmail.com', NULL, NULL, N'https://lh3.googleusercontent.com/a/AAcHTtcxGYzcGEQhyoTpCXC6otkqXZQ0MFMZWF_TzTUuOg=s96-c')
INSERT [dbo].[Account] ([AccountID], [AccountName], [Pass], [Permission], [Firtname], [Lastname], [email], [NumberPhone], [addres], [AccountImg]) VALUES (4024, N'1928897724134478', N'ÂË²Ô!}ÝN;¤Ñç”v°Ë±B°¤BcºZz?’~W', 1, N'khang', N'Nguyễn Khang', N'nguyenkhangloveanime@gmail.com', N'094918832822', N'Thanh Hóa', N'images/7949_81ldotjrtkl.jpg')
INSERT [dbo].[Account] ([AccountID], [AccountName], [Pass], [Permission], [Firtname], [Lastname], [email], [NumberPhone], [addres], [AccountImg]) VALUES (4027, N'khanh', N'MÆv‘‚¥¯·ö‚''ƒŠp‹¥€¬ÅWÆ±—Ek{¨', 1, N'Nam', N'Khanh', N'k@gmail.com', N'0123456789', N'c', NULL)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([cdID], [accountID], [productID], [Quantity]) VALUES (9, 1009, 2013, 1)
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[Guarantee] ON 

INSERT [dbo].[Guarantee] ([AccountID], [ReceivedDate], [DeliveryDate], [Progress], [ProductID], [Seri], [Evaluate], [Comment], [Describe], [GuaranteeID], [PersonGuarantee], [FullName], [Address], [phone], [email], [expense], [productImages]) VALUES (1009, CAST(N'2023-06-26' AS Date), CAST(N'2023-07-03' AS Date), 0, 14, N'123123', 3, N'', N'Hang ngon', 1, N'Nguyễn Khang', N'Nguyen Khang', N'Thanh hoa', N'0949188328', N'undefined', 8000000, N'images/7949_81ldotjrtkl.jpg')
INSERT [dbo].[Guarantee] ([AccountID], [ReceivedDate], [DeliveryDate], [Progress], [ProductID], [Seri], [Evaluate], [Comment], [Describe], [GuaranteeID], [PersonGuarantee], [FullName], [Address], [phone], [email], [expense], [productImages]) VALUES (1009, CAST(N'2023-06-29' AS Date), CAST(N'2023-07-06' AS Date), 1, 14, N'123123', NULL, NULL, N'ổn ', 2, N'LaiQuang', N'NguyenKhang', N'thanh hóa ', N'0949188328', N'nguyenkhangloveanime@gmail.com', 8000000, N'images/ideapad-pro-5i-intel-2089.jpeg')
INSERT [dbo].[Guarantee] ([AccountID], [ReceivedDate], [DeliveryDate], [Progress], [ProductID], [Seri], [Evaluate], [Comment], [Describe], [GuaranteeID], [PersonGuarantee], [FullName], [Address], [phone], [email], [expense], [productImages]) VALUES (1009, CAST(N'2023-06-29' AS Date), CAST(N'2023-07-06' AS Date), 0, 14, N'123123', 5, N'tốt', N'okooke', 3, N'LaiQuang', N'NguyenKhang', N'thanh hóa ', N'0949188328', N'nguyenkhangloveanime@gmail.com', 8000000, N'images/638140612136202106_acer-nitro-gaming-an515-58-dd.jpg')
INSERT [dbo].[Guarantee] ([AccountID], [ReceivedDate], [DeliveryDate], [Progress], [ProductID], [Seri], [Evaluate], [Comment], [Describe], [GuaranteeID], [PersonGuarantee], [FullName], [Address], [phone], [email], [expense], [productImages]) VALUES (1009, CAST(N'2023-06-29' AS Date), CAST(N'2023-07-06' AS Date), 0, 14, N'123123', NULL, NULL, N'chât lượng kém', 4, N'LaiQuang', N'NguyenKhang', N'thanh hóa ', N'0949188328', N'nguyenkhangloveanime@gmail.com', 0, N'images/tải xuống (1).jpg')
INSERT [dbo].[Guarantee] ([AccountID], [ReceivedDate], [DeliveryDate], [Progress], [ProductID], [Seri], [Evaluate], [Comment], [Describe], [GuaranteeID], [PersonGuarantee], [FullName], [Address], [phone], [email], [expense], [productImages]) VALUES (1009, CAST(N'2023-07-13' AS Date), CAST(N'2023-07-20' AS Date), 1, 14, N'123123', 3, N'Tôi hài lòng với bảo hành của shop', N'oke quá ', 5, N'LaiQuang', N'NguyenKhang', N'thanh hóa ', N'0949188328', N'nguyenkhangloveanime@gmail.com', 1, N'images/ideapad-pro-5i-intel-2089.jpeg')
SET IDENTITY_INSERT [dbo].[Guarantee] OFF
GO
INSERT [dbo].[News] ([NewId], [Title], [NewsGroupId]) VALUES (1, N' +094-918-8328', 1)
INSERT [dbo].[News] ([NewId], [Title], [NewsGroupId]) VALUES (2, N'nguyenkhangloveanime@gmail.com', 1)
INSERT [dbo].[News] ([NewId], [Title], [NewsGroupId]) VALUES (3, N'Hòa Lac City', 1)
INSERT [dbo].[News] ([NewId], [Title], [NewsGroupId]) VALUES (4, N'Home', 2)
INSERT [dbo].[News] ([NewId], [Title], [NewsGroupId]) VALUES (5, N'Warranty', 2)
INSERT [dbo].[News] ([NewId], [Title], [NewsGroupId]) VALUES (6, N'About Us', 3)
INSERT [dbo].[News] ([NewId], [Title], [NewsGroupId]) VALUES (7, N'Contact Us', 3)
INSERT [dbo].[News] ([NewId], [Title], [NewsGroupId]) VALUES (8, N'Privacy Policy', 3)
INSERT [dbo].[News] ([NewId], [Title], [NewsGroupId]) VALUES (9, N'Terms & Conditions', 3)
INSERT [dbo].[News] ([NewId], [Title], [NewsGroupId]) VALUES (10, N'My Account', 4)
INSERT [dbo].[News] ([NewId], [Title], [NewsGroupId]) VALUES (11, N'View Cart', 4)
INSERT [dbo].[News] ([NewId], [Title], [NewsGroupId]) VALUES (12, N'Help', 4)
GO
INSERT [dbo].[NewsGroup] ([NewsGroupId], [New]) VALUES (1, N'Address')
INSERT [dbo].[NewsGroup] ([NewsGroupId], [New]) VALUES (2, N'CATEGORIES')
INSERT [dbo].[NewsGroup] ([NewsGroupId], [New]) VALUES (3, N'INFORMATION')
INSERT [dbo].[NewsGroup] ([NewsGroupId], [New]) VALUES (4, N'SERVICE')
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [FullName], [address], [email], [productID], [productName], [Seri], [quantity], [price], [Phone]) VALUES (2, 123, N'NguyenKhang', N'thanh hóa ', N'nguyenkhangloveanime@gmail.com', 14, N'Acer nitro 5 2', N'123123', 1, 8000000, N'0949188328')
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [FullName], [address], [email], [productID], [productName], [Seri], [quantity], [price], [Phone]) VALUES (3, 121, N'NguyenKhang', N'thanh hóa', N'nguyenkhangloveanime@gmail.com', 3007, N'Lenovo 3', N'19040112', 1, 6000000, N'0949188328')
INSERT [dbo].[OrderDetails] ([OrderDetailID], [OrderID], [FullName], [address], [email], [productID], [productName], [Seri], [quantity], [price], [Phone]) VALUES (4, 111, N'NguyenKhang', N'thanh hóa', N'nguyenkhangloveanime@gmail.com', 3005, N'HP 1', N'190402011', 1, 6000000, N'0949188328')
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
INSERT [dbo].[Orderr] ([OrderID], [AccountID], [Total], [OrderDate], [Status]) VALUES (111, 1009, 3, CAST(N'2023-07-10' AS Date), 2)
INSERT [dbo].[Orderr] ([OrderID], [AccountID], [Total], [OrderDate], [Status]) VALUES (121, 1009, 1, CAST(N'2023-07-10' AS Date), 2)
INSERT [dbo].[Orderr] ([OrderID], [AccountID], [Total], [OrderDate], [Status]) VALUES (123, 1009, 1, CAST(N'2023-06-26' AS Date), 0)
GO
INSERT [dbo].[Product] ([Seri], [ProductID], [price], [CreateDate], [ModifiedDate], [CreateBy], [ModifiedBy], [Guarantee], [images], [sell]) VALUES (N'123123', 14, 8000000, CAST(N'2023-05-18' AS Date), CAST(N'2023-05-18' AS Date), N'abc', N'abc', 123, N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/12/6/637743874726278183_acer-nitro-gaming-an515-57-56xx-den-dd.jpg', 0.1)
INSERT [dbo].[Product] ([Seri], [ProductID], [price], [CreateDate], [ModifiedDate], [CreateBy], [ModifiedBy], [Guarantee], [images], [sell]) VALUES (N'12324', 3003, 9500000, CAST(N'2023-05-18' AS Date), CAST(N'2023-05-18' AS Date), N'khang', N'khang', 1223, N'https://fptshop.com.vn/Uploads/Originals/2023/2/15/638120517993710953_lenovo-gaming-ideapad-3-15ihu6-den-dd.jpg', 0.1)
INSERT [dbo].[Product] ([Seri], [ProductID], [price], [CreateDate], [ModifiedDate], [CreateBy], [ModifiedBy], [Guarantee], [images], [sell]) VALUES (N'19040112', 3007, 6000000, CAST(N'2023-05-18' AS Date), CAST(N'2023-05-18' AS Date), N'khang', N'khang', 1223, N'https://www.anphatpc.com.vn/media/news/1609_LenovoThinkBookmai.jpg', 0.2)
INSERT [dbo].[Product] ([Seri], [ProductID], [price], [CreateDate], [ModifiedDate], [CreateBy], [ModifiedBy], [Guarantee], [images], [sell]) VALUES (N'190402', 2013, 6000000, CAST(N'2023-05-18' AS Date), CAST(N'2023-05-18' AS Date), N'khang', N'khang', 123, N'https://cdn.tgdd.vn/Products/Images/44/305655/dell-vostro-3520-i3-v5i3614w1-thumb-600x600.jpg', 0.1)
INSERT [dbo].[Product] ([Seri], [ProductID], [price], [CreateDate], [ModifiedDate], [CreateBy], [ModifiedBy], [Guarantee], [images], [sell]) VALUES (N'19040201', 3004, 6000000, CAST(N'2023-05-18' AS Date), CAST(N'2023-05-18' AS Date), N'khang', N'khang', 1223, N'https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/laptop/Lenovo/laptop-lenovo-6.jpg', 0.15)
INSERT [dbo].[Product] ([Seri], [ProductID], [price], [CreateDate], [ModifiedDate], [CreateBy], [ModifiedBy], [Guarantee], [images], [sell]) VALUES (N'190402011', 3005, 6000000, CAST(N'2023-05-18' AS Date), CAST(N'2023-05-18' AS Date), N'khang', N'khang', 1223, N'https://cdn2.cellphones.com.vn/x,webp,q100/media/wysiwyg/laptop/HP/laptop-hp-2_1.jpg', 0.1)
INSERT [dbo].[Product] ([Seri], [ProductID], [price], [CreateDate], [ModifiedDate], [CreateBy], [ModifiedBy], [Guarantee], [images], [sell]) VALUES (N'1904020112', 3006, 6000000, CAST(N'2023-05-18' AS Date), CAST(N'2023-05-18' AS Date), N'khang', N'khang', 1223, N'https://minhhightech.com/admin/sanpham/laptop-may-tinh-bang-hp-elite-x2-7.jpg', 0.2)
INSERT [dbo].[Product] ([Seri], [ProductID], [price], [CreateDate], [ModifiedDate], [CreateBy], [ModifiedBy], [Guarantee], [images], [sell]) VALUES (N'21312', 1, 9000000, CAST(N'2023-05-24' AS Date), CAST(N'2023-05-24' AS Date), N'abc', N'abc', 6, N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/8/15/637961786361557520_acer-nitro-gaming-5-an515-45-den-dd.jpg', 0.05)
INSERT [dbo].[Product] ([Seri], [ProductID], [price], [CreateDate], [ModifiedDate], [CreateBy], [ModifiedBy], [Guarantee], [images], [sell]) VALUES (N'25', 2014, 5000000, CAST(N'2023-06-07' AS Date), CAST(N'2023-06-07' AS Date), N'khang', N'khang', 123, N'https://laptops.vn/uploads/dell-xps-17-9710_3@4x-100_1677234716.jpg', 0.15)
INSERT [dbo].[Product] ([Seri], [ProductID], [price], [CreateDate], [ModifiedDate], [CreateBy], [ModifiedBy], [Guarantee], [images], [sell]) VALUES (N'2555', 2012, 9500000, CAST(N'2023-06-07' AS Date), CAST(N'2023-06-07' AS Date), N'khang', N'khang', 23, N'https://fptshop.com.vn/Uploads/Originals/2023/3/10/638140612136202106_acer-nitro-gaming-an515-58-dd.jpg', 0.1)
GO
SET IDENTITY_INSERT [dbo].[ProductImageList] ON 

INSERT [dbo].[ProductImageList] ([pilid], [ProductID], [images]) VALUES (1, 14, N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/12/6/637743874726278183_acer-nitro-gaming-an515-57-56xx-den-dd.jpg')
INSERT [dbo].[ProductImageList] ([pilid], [ProductID], [images]) VALUES (2, 1, N'https://images.fpt.shop/unsafe/fit-in/240x215/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2022/8/15/637961786361557520_acer-nitro-gaming-5-an515-45-den-dd.jpg')
INSERT [dbo].[ProductImageList] ([pilid], [ProductID], [images]) VALUES (3, 2012, N'https://fptshop.com.vn/Uploads/Originals/2023/3/10/638140612136202106_acer-nitro-gaming-an515-58-dd.jpg')
SET IDENTITY_INSERT [dbo].[ProductImageList] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([productID], [productName], [supplierID], [color], [RAM], [CPU], [HardDriver], [Screen], [Quantity], [Describe]) VALUES (1, N'Acer nitro 5 3', 1, N'red', N'24', N'AMD 34', N'512 GB', N'123', 17, N'1213')
INSERT [dbo].[ProductType] ([productID], [productName], [supplierID], [color], [RAM], [CPU], [HardDriver], [Screen], [Quantity], [Describe]) VALUES (14, N'Acer nitro 5 2', 1, N'red', N'24', N'AMD 34', N'512 GB', N'123', 1, N'123')
INSERT [dbo].[ProductType] ([productID], [productName], [supplierID], [color], [RAM], [CPU], [HardDriver], [Screen], [Quantity], [Describe]) VALUES (2012, N'Acer nitro 5 1', 1, N'red', N'24', N'AMD 34', N'512 GB', N'132', 123, N'132')
INSERT [dbo].[ProductType] ([productID], [productName], [supplierID], [color], [RAM], [CPU], [HardDriver], [Screen], [Quantity], [Describe]) VALUES (2013, N'Dell 1', 2, N'green', N'8', N'AMD 34', N'256 GB', N'34', 123, N'3434')
INSERT [dbo].[ProductType] ([productID], [productName], [supplierID], [color], [RAM], [CPU], [HardDriver], [Screen], [Quantity], [Describe]) VALUES (2014, N'Dell 2', 2, N'green', N'24', N'AMD 4124', N'512 GB', N'12412', 123, N'3434')
INSERT [dbo].[ProductType] ([productID], [productName], [supplierID], [color], [RAM], [CPU], [HardDriver], [Screen], [Quantity], [Describe]) VALUES (3003, N'Lenovo 1', 1003, N'green', N'24', N'AMD 34', N'512 GB', N'12412', 124, N'3434')
INSERT [dbo].[ProductType] ([productID], [productName], [supplierID], [color], [RAM], [CPU], [HardDriver], [Screen], [Quantity], [Describe]) VALUES (3004, N'Lenovo', 1003, N'green', N'24', N'AMD 34', N'512 GB', N'12412', 124, N'3434')
INSERT [dbo].[ProductType] ([productID], [productName], [supplierID], [color], [RAM], [CPU], [HardDriver], [Screen], [Quantity], [Describe]) VALUES (3005, N'HP 1', 1002, N'red', N'24', N'AMD 34', N'512 GB', N'12412', 124, N'3434')
INSERT [dbo].[ProductType] ([productID], [productName], [supplierID], [color], [RAM], [CPU], [HardDriver], [Screen], [Quantity], [Describe]) VALUES (3006, N'HP', 1002, N'red', N'24', N'AMD 34', N'512 GB', N'12412', 125, N'3434')
INSERT [dbo].[ProductType] ([productID], [productName], [supplierID], [color], [RAM], [CPU], [HardDriver], [Screen], [Quantity], [Describe]) VALUES (3007, N'Lenovo 3', 1003, N'blue', N'24', N'AMD 34', N'512 GB', N'12412', 126, N'3434')
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
SET IDENTITY_INSERT [dbo].[Review] ON 

INSERT [dbo].[Review] ([rid], [ProductID], [name], [email], [review], [rating], [postTime]) VALUES (1, 14, N'Nguyen Khang', N'nguyenkhangloveanime@gmail.com', N'san pha mtot ', 4, CAST(N'2023-06-26T22:12:27.550' AS DateTime))
INSERT [dbo].[Review] ([rid], [ProductID], [name], [email], [review], [rating], [postTime]) VALUES (2, 14, N'Nguyen Khang', N'nguyenkhangloveanime@gmail.com', N'san pham dep trai lam', 5, CAST(N'2023-06-26T22:12:44.733' AS DateTime))
INSERT [dbo].[Review] ([rid], [ProductID], [name], [email], [review], [rating], [postTime]) VALUES (3, 14, N'ad', N'adaaa@gmail', N'ad', 5, CAST(N'2023-06-27T08:19:08.063' AS DateTime))
INSERT [dbo].[Review] ([rid], [ProductID], [name], [email], [review], [rating], [postTime]) VALUES (4, 14, N'Nguyễn Khang', N'adaaaaaa@gmail', N'khangnh', 4, CAST(N'2023-06-27T10:17:58.817' AS DateTime))
INSERT [dbo].[Review] ([rid], [ProductID], [name], [email], [review], [rating], [postTime]) VALUES (5, 14, N'Nguyễn Khang', N'adaaa@gmail', N'nhu sit', 1, CAST(N'2023-06-27T10:18:37.457' AS DateTime))
INSERT [dbo].[Review] ([rid], [ProductID], [name], [email], [review], [rating], [postTime]) VALUES (6, 14, N'a', N'adaaa@gmail', N'ad', 5, CAST(N'2023-06-29T09:13:41.580' AS DateTime))
INSERT [dbo].[Review] ([rid], [ProductID], [name], [email], [review], [rating], [postTime]) VALUES (7, 1, N'Nguyễn Khang', N'nguyenkhangloveanime@gmail.com', N'hay', 4, CAST(N'2023-06-29T09:22:02.997' AS DateTime))
INSERT [dbo].[Review] ([rid], [ProductID], [name], [email], [review], [rating], [postTime]) VALUES (8, 14, N'ad', N'adaaa@gmail', N'asdsadsad', 3, CAST(N'2023-06-29T10:16:05.303' AS DateTime))
INSERT [dbo].[Review] ([rid], [ProductID], [name], [email], [review], [rating], [postTime]) VALUES (9, 14, N'Nguyễn Khang', N'nguyenkhangloveanime@gmail.com', N'dssdff', 3, CAST(N'2023-06-29T10:16:27.967' AS DateTime))
INSERT [dbo].[Review] ([rid], [ProductID], [name], [email], [review], [rating], [postTime]) VALUES (10, 14, N'khang Nguyễn Khang', N'nguyenkhangloveanime@gmail.com', N'kha', 4, CAST(N'2023-07-22T09:52:48.480' AS DateTime))
SET IDENTITY_INSERT [dbo].[Review] OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([supplierID], [supplierName], [note]) VALUES (1, N'Acer', N'123')
INSERT [dbo].[Supplier] ([supplierID], [supplierName], [note]) VALUES (2, N'Dell', N'123')
INSERT [dbo].[Supplier] ([supplierID], [supplierName], [note]) VALUES (1002, N'HP', N'123')
INSERT [dbo].[Supplier] ([supplierID], [supplierName], [note]) VALUES (1003, N'Lenovo', N'123')
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Account] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Account]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Account] FOREIGN KEY([CusID])
REFERENCES [dbo].[Account] ([AccountID])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Account]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD FOREIGN KEY([NewsGroupId])
REFERENCES [dbo].[NewsGroup] ([NewsGroupId])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductType] FOREIGN KEY([ProductID])
REFERENCES [dbo].[ProductType] ([productID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductType]
GO
ALTER TABLE [dbo].[ProductType]  WITH CHECK ADD  CONSTRAINT [FK_ProductType_Supplier] FOREIGN KEY([supplierID])
REFERENCES [dbo].[Supplier] ([supplierID])
GO
ALTER TABLE [dbo].[ProductType] CHECK CONSTRAINT [FK_ProductType_Supplier]
GO
