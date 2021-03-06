USE [SBPC_System]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 3/15/2015 12:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Email] [nvarchar](128) NOT NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Role] [nvarchar](max) NOT NULL,
	[AccountTypeName] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.Accounts] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AccountTypes]    Script Date: 3/15/2015 12:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountTypes](
	[Name] [nvarchar](128) NOT NULL,
	[Price] [real] NOT NULL,
	[ProductLimit] [int] NOT NULL,
	[SiteLimit] [int] NOT NULL,
	[Function] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AccountTypes] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 3/15/2015 12:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Page_Id] [int] NULL,
	[Image] [nvarchar](max) NULL,
	[Website_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Media]    Script Date: 3/15/2015 12:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Media](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[ProductId] [int] NULL,
	[CategoryId] [int] NULL,
 CONSTRAINT [PK_dbo.Media] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pages]    Script Date: 3/15/2015 12:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[TitleText] [nvarchar](max) NULL,
	[HeaderText] [nvarchar](max) NULL,
	[HtmlFile] [nvarchar](max) NULL,
	[WebsiteId] [int] NOT NULL,
	[Dragged_Content] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Pages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/15/2015 12:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
	[SellingPrice] [float] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CategoryId] [int] NULL,
	[Image] [nchar](100) NULL,
	[Page_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Themes]    Script Date: 3/15/2015 12:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Themes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Style] [nvarchar](max) NULL,
	[Color] [nvarchar](max) NULL,
	[CssFile] [nvarchar](max) NULL,
	[Email] [nvarchar](128) NULL,
	[Image] [nchar](200) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Themes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Websites]    Script Date: 3/15/2015 12:51:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Websites](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Url] [nvarchar](max) NULL,
	[TitleSize] [int] NULL,
	[TitleColor] [nvarchar](max) NULL,
	[BackGroundImange] [nvarchar](max) NULL,
	[FaviconImage] [nvarchar](max) NULL,
	[Email] [nvarchar](128) NULL,
	[ThemeId] [int] NOT NULL,
	[IsPublish] [bit] NULL,
 CONSTRAINT [PK_dbo.Websites] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Accounts] ([Email], [FullName], [Password], [Role], [AccountTypeName]) VALUES (N'tuan@yahoo.com', N'tuan', N'123456', N'User', N'Gold')
INSERT [dbo].[AccountTypes] ([Name], [Price], [ProductLimit], [SiteLimit], [Function]) VALUES (N'Gold', 2000, 40, 3, NULL)
SET IDENTITY_INSERT [dbo].[Themes] ON 

INSERT [dbo].[Themes] ([Id], [Name], [Style], [Color], [CssFile], [Email], [Image], [IsActive]) VALUES (1, N'1', NULL, N'white', N'/Assets/css/shortHeadinglight.css', NULL, N'/Assets/img/templates/_screenshot_store_xlarge.jpg                                                                                                                                                      ', 1)
INSERT [dbo].[Themes] ([Id], [Name], [Style], [Color], [CssFile], [Email], [Image], [IsActive]) VALUES (2, N'2', NULL, N'grey', N'/Assets/css/shortHeadinglight.css', NULL, N'/Assets/img/templates/_screenshot_store_xlarge.jpg                                                                                                                                                      ', 1)
SET IDENTITY_INSERT [dbo].[Themes] OFF
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Accounts_dbo.AccountTypes_AccountTypeName] FOREIGN KEY([AccountTypeName])
REFERENCES [dbo].[AccountTypes] ([Name])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_dbo.Accounts_dbo.AccountTypes_AccountTypeName]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Pages1] FOREIGN KEY([Page_Id])
REFERENCES [dbo].[Pages] ([Id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Pages1]
GO
ALTER TABLE [dbo].[Media]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Media_dbo.Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Media] CHECK CONSTRAINT [FK_dbo.Media_dbo.Categories_CategoryId]
GO
ALTER TABLE [dbo].[Media]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Media_dbo.Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Media] CHECK CONSTRAINT [FK_dbo.Media_dbo.Products_ProductId]
GO
ALTER TABLE [dbo].[Pages]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Pages_dbo.Websites_WebsiteId] FOREIGN KEY([WebsiteId])
REFERENCES [dbo].[Websites] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pages] CHECK CONSTRAINT [FK_dbo.Pages_dbo.Websites_WebsiteId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Categories_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Pages1] FOREIGN KEY([Page_Id])
REFERENCES [dbo].[Pages] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Pages1]
GO
ALTER TABLE [dbo].[Themes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Themes_dbo.Accounts_Email] FOREIGN KEY([Email])
REFERENCES [dbo].[Accounts] ([Email])
GO
ALTER TABLE [dbo].[Themes] CHECK CONSTRAINT [FK_dbo.Themes_dbo.Accounts_Email]
GO
ALTER TABLE [dbo].[Websites]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Websites_dbo.Accounts_Email] FOREIGN KEY([Email])
REFERENCES [dbo].[Accounts] ([Email])
GO
ALTER TABLE [dbo].[Websites] CHECK CONSTRAINT [FK_dbo.Websites_dbo.Accounts_Email]
GO
ALTER TABLE [dbo].[Websites]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Websites_dbo.Themes_ThemeId] FOREIGN KEY([ThemeId])
REFERENCES [dbo].[Themes] ([Id])
GO
ALTER TABLE [dbo].[Websites] CHECK CONSTRAINT [FK_dbo.Websites_dbo.Themes_ThemeId]
GO
